using DryRidgeProgramming.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Security.Cryptography;
using System.Text;

namespace DryRidgeProgramming.Controllers
{
    public class DRPConstructor
    {
        private List<int> intsSaltValue;
        private DateTime nowTime;
        private string saltLine;
        private string saltedPass;
        private string sPass;

        public DRPConstructor()
        {
        }
        /**private string BuildPass(string pass, string salt)
        {
            string aesPass = "";
            for (int i = 0; i < intsSaltValue.Count; i++)
                aesPass += salt[(i * 10 + intsSaltValue[i]) % 128];
            nowTime = DateTime.Now;
            string date = nowTime.ToString("yyyy-MM-dd hh:mm:ss.ffffff");
            aesPass += date.Substring(0, 4) + date.Substring(5, 2) + date.Substring(8, 2) + date.Substring(11, 2) + date.Substring(14,2) +
                date.Substring(17, 2) + date.Substring(20);
            for (int i = 0;i < intsSaltValue.Count;i++)
                aesPass = aesPass.Substring(0, i) + aesPass[(i * 2 + intsSaltValue[i]) % 32] + aesPass.Substring(i + 1, ((i * 2 + intsSaltValue[i]) % 32) - i - 1) + aesPass[i] + aesPass.Substring(((2 * i + intsSaltValue[i]) % 32) + 1);
            return aesPass;
        }*/
        public DateTime GetNowTime()
        {
            return (nowTime == DateTime.MinValue ? DateTime.Now : nowTime);
        }
        private byte[] BuildIV()
        {
            List<int> list = new();
            nowTime = (nowTime == DateTime.MinValue ? DateTime.Now : nowTime);
            string saltDate = DateString(nowTime);
            for (int i = 0; i < saltDate.Length; i++)
                list.Add((int)(saltDate[i]) - 48);
            byte[] IV = new byte[16];
            int count = 0;
            for (int i = 0; i < 16; i++)
            {
                IV[i] = (byte)(saltLine[Mod(list[list.Count - 1 - i] + count, 64)]);
                count += list[list.Count - 1 - i];
            }
            return IV;
        }
        private static int Mod(int x, int length)
        {
            return (length - x < 0 ? x - length : x);
        }
        private byte[] BuildPass(string pass)
        {
            byte[] aesPass = new byte[32];
            for (int i = 0; i < pass.Length; i++)
                aesPass[i] = (byte)(pass[i]);
            if (intsSaltValue == null)
                GetInts(saltLine[..64]);
            List<int> list = intsSaltValue;
            if (pass.Length + intsSaltValue.Count < 32)
            {
                nowTime = (nowTime == DateTime.MinValue ? DateTime.Now : nowTime);
                string saltDate = DateString(nowTime);
                for (int i = 0; i < saltDate.Length; i++)
                    list.Add((int)(saltDate[i]) - 48);
            }
            int count = 0;
            int j = pass.Length;
            while (true)
            {
                for (int i = 0; i < list.Count; i++)
                    if (j < 32)
                    {
                        aesPass[j] = (byte)(saltLine[Mod((i + count) * 10 + list[i], 64)]);
                        j++;
                    }
                    else
                        return aesPass;
                count += list.Count;
            }
        }
        public string BuildUser(string user)
        {
            user = user.ToLower();
            int[,] options = GenerateOptions(user, 0);
            char[] arrayResult = new char[user.Length];
            for (int i = 0; i < user.Length; i++)
                arrayResult[i] = user[i];
            for (int i = 0; i < user.Length; i++)
            {
                var temp = arrayResult[i];
                arrayResult[i] = arrayResult[(int)(0.01 * ((options[i, 0] * 10 + i) % 100) * user.Length)];
                arrayResult[(int)(0.01 * ((options[i, 0] * 10 + i) % 100) * user.Length)] = temp;
            }
            string result = "";
            for (int i = 0; i < user.Length; i++)
            {
                int value = (int)(arrayResult[i]) + options[i, 1];
                result += (char)(value < 48 ? 122 - 47 + value : (value > 57 && value < 97 ? 97 - 58 + value : (value > 122 ? 47 + value - 122 : value)));
            }
            return result;
        }
        public string RebuildUser(string user)
        {
            user = user.ToLower();
            int[,] options = GenerateOptions(user, 1);
            char[] arrayResult = new char[user.Length];
            for (int i = 0; i < user.Length; i++)
            {
                int value = (int)(user[i]) + options[i, 1];
                arrayResult[i] = (char)(value < 48 ? 122 - 47 + value : (value > 57 && value < 97 ? 58 - 97 + value : (value > 122 ? 47 + value - 122 : value)));
            }
            for (int i = user.Length - 1; i >= 0; i--)
            {
                var temp = arrayResult[i];
                arrayResult[i] = arrayResult[(int)(0.01 * ((options[i, 0] * 10 + i) % 100) * user.Length)];
                arrayResult[(int)(0.01 * ((options[i, 0] * 10 + i) % 100) * user.Length)] = temp;
            }
            string result = "";
            for (int i = 0; i < arrayResult.Length; i++)
                result += arrayResult[i];
            return result;
        }
        private static int[,] GenerateOptions(string user, int direction)
        {
            int[,] options = new int[user.Length, 2];
            options[0, 0] = 3;
            options[0, 1] = (1 + direction) % 2;
            options[1, 0] = 1;
            options[1, 1] = (1 + direction) % 2;
            decimal bValue, dValue;
            bValue = dValue = (decimal)(0.1415926535897932384626433832795028841971693993751058209749445923);
            dValue = dValue * 10 - 1;
            for (int i = 2; i < user.Length; i++)
            {
                decimal compD = dValue * 10;
                decimal compB = bValue * 2;
                options[i, 0] = (int)(compD);
                options[i, 1] = ((int)(compB) + direction) % 2;
                dValue = compD - options[i, 0];
                bValue = compB - (int)(compB);

            }
            for (int i = 0; i < user.Length; i++)
                options[i, 1] = (options[i, 1] == 0 ? 1 : -1) * options[user.Length - 1 - i, 0];
            return options;
        }
        private static string DateString(DateTime thisDate)
        {
            string date = thisDate.ToString("yyyy-MM-dd hh:mm:ss.ffffff");
            return date[..4] + date.Substring(5, 2) + date.Substring(8, 2) + date.Substring(11, 2) + date.Substring(14, 2) +
                date.Substring(17, 2) + date[20..];
        }
        private void SaltValue(string pass)
        {
            byte[] salt = new byte[128];
            for (int i = 0; i < 128; i++)
            {
                Random random = new();
                salt[i] = (byte)(random.Next(0, 256));
            }
            saltLine = Encoding.ASCII.GetString(salt);
            GetInts(saltLine[..64]);
            saltedPass = "";
            int count = 0;
            for (int i = 0; i < Math.Min(pass.Length, intsSaltValue.Count); i++)
            {
                saltedPass += pass[i] + (count + intsSaltValue[i] < 64 ? saltLine.Substring(count, intsSaltValue[i]) : saltLine[count..]);
                count += intsSaltValue[i];
            }
            saltedPass += pass[Math.Min(pass.Length, intsSaltValue.Count)..] + saltLine[count..64];
        }
        public string GetSaltLine()
        {
            return saltLine;
        }
        public void SetSaltLine(string saltLine)
        {
            this.saltLine = saltLine;
        }
        public string GetPass()
        {
            return saltedPass;
        }
        public void SetNowTime(DateTime modifiedDate)
        {
            nowTime = modifiedDate;
        }
        public string GetSPass()
        {
            return sPass;
        }
        public string Decrypt(string value, string pass)
        {
            byte[] bytePass = new byte[32];
            if (pass.Length < 32)
                bytePass = BuildPass(pass);
            else
                for (int i = 0; i < 32; i++)
                    bytePass[i] = (byte)(pass[i]);
            byte[] byteValue = new byte[value.Length];
            for (int i = 0; i < value.Length; i++)
                byteValue[i] = (byte)(value[i]);
            string byteDec = null;
            using (AesCryptoServiceProvider provider = new())
            {
                provider.Key = bytePass;
                provider.IV = BuildIV();
                ICryptoTransform decrTrans = provider.CreateDecryptor(provider.Key, provider.IV);
                using MemoryStream memDecrypt = new(byteValue);
                using CryptoStream streamDecrypt = new(memDecrypt, decrTrans, CryptoStreamMode.Read);
                using StreamReader readerDecrypt = new(streamDecrypt);
                byteDec = readerDecrypt.ReadToEnd();
            }
            return byteDec;
        }
        public string Encrypt(string value, string pass)
        {
            byte[] bytePass = new byte[32];
            if (pass.Length != 32)
                bytePass = BuildPass(pass);
            else
                for (int i = 0; i < 32; i++)
                    bytePass[i] = (byte)(pass[i]);
            byte[] byteEnc;
            using (AesCryptoServiceProvider provider = new())
            {
                provider.Key = bytePass;
                provider.IV = BuildIV();
                ICryptoTransform encrTrans = provider.CreateEncryptor(provider.Key, provider.IV);
                using MemoryStream memEncrypt = new();
                using CryptoStream streamEncrypt = new(memEncrypt, encrTrans, CryptoStreamMode.Write);
                using (StreamWriter writerEncrypt = new(streamEncrypt))
                {
                    writerEncrypt.Write(value);
                }
                byteEnc = memEncrypt.ToArray();
            }
            string cipher = "";
            for (int i = 0; i < byteEnc.Length; i++)
                cipher += (char)(byteEnc[i]);
            return cipher;
        }
        public void EncryptPass(string pass)
        {
            if (saltedPass == null || saltLine == null || pass.Length == 0)
                SaltValue(pass);
            byte[] bytePass = Encoding.ASCII.GetBytes(saltedPass);
            SHA512 shaM = new SHA512Managed();
            sPass = Encoding.ASCII.GetString(shaM.ComputeHash(bytePass));
        }
        private void GetInts(string saltLine)
        {
            intsSaltValue = new List<int>();
            for (int i = 0; i < saltLine.Length; i++)
            {
                int value = (int)(saltLine[i]);
                if (value > 47 && value < 58)
                    intsSaltValue.Add(value - 48);
            }
        }

    }
}
