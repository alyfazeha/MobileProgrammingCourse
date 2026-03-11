**Name:** *Alyfa Zahra Qurrota Aini* **NIM:** *244107060057* # Quiz 1: Personalized Store Discount System

This project is a Dart-based application designed to calculate store discounts. The system is personalized using the student's identity, where the last three digits of the NIM (Student ID) directly influence the total transaction amount.

## Student Identity
- **Name**: Alyfa Zahra Qurrota Aini
- **NIM**: 244107060057

## How the NIM Influences the Total
In this program, the last three digits of my NIM, which are **057**, are converted into a `double` variable named `nilaiUnikNIM` with the value of **57.0**.

This value is added as an additional item to the price list using the `.add()` method before the total is calculated. The impact of this unique value is as follows:

1. **Incremental Total**: The total shopping amount increases by exactly **Rp 57.00**.
2. **Discount Threshold**: This additional value acts as a "unique offset." In a real-world scenario, this small addition can potentially push the total belanja (total spending) over a specific threshold. For example, if the initial total of the items was **Rp 199,950.00**, adding the **57.0** from my NIM would bring the total to **Rp 200,007.00**, thereby qualifying the transaction for a **10% discount** instead of just 5%.



## Technical Implementation
- **NIM Personalization**: Uses the student's specific ID for calculation to ensure unique output.
- **Null Safety**: Implements Dart's null safety features (`String?` and `!`) for robust message handling, ensuring the application handles nullable types safely.
- **Functions & Loops**: Utilizes a dedicated `hitungTotal` function with a `for-in` loop for efficient list summation.
- **Control Flow**: Automatically determines discount categories (0%, 5%, or 10%) based on the final calculated total.