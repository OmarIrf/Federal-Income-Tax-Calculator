#include <iostream>
#include <fstream>
#include <string>
#include <ctime>

class TaxCalculation {
private:
    std::string name; 
    float income;
    float federalIncomeTaxPaid = 0.0f;
    char filingStatus;
    


public:
    void setName(std::string n) {
        name = n;
    }

    std::string getName() {
        return name;
    }

    void setIncome(float i) {
        income = i;
    }

    float getIncome() {
        return income;
    }

    void setFilingStatus(char fs) {
        filingStatus = fs;
    }

    char getFilingStatus() {
        return filingStatus;
    }
	
	void setFederalIncomeTaxPaid(float taxAmount) {
    federalIncomeTaxPaid = taxAmount;
   }
	
    float getFederalTaxesPaid() {
        return federalIncomeTaxPaid;
    }
 
    float singleTaxable(float income) {
        if (income <= 9999) {
      return 0.1 * income;
    } else if (income <= 79999) {
      return 999.9 + 0.25 * (income - 10000);
    } else {
      return 18499.65 + 0.35 * (income - 79999);
    }
        return 0.0; 
    }

    float marriedTaxable(float income) {
        if (income <= 19999) {
      return 0.1 * income;
    } else if (income <= 159999) {
      return 1999.9 + 0.25 * (income - 19999);
    } else {
      return 38999.8 + 0.35 * (income - 159999);
    }
        return 0.0; 
    }

    void printInformation() {
        std::cout << "Name: " << name << std::endl;
        std::cout << "Filing Status: " << filingStatus << std::endl;
        std::cout << "Income: $" << income << std::endl;
        std::cout << "Federal Income Tax Paid: $" << federalIncomeTaxPaid << std::endl;
    }
	  
};

int main() {
    char choice;
    TaxCalculation taxObj;
     

    do {
        std::cout << "Select filing status (S for Single, M for Married): ";
        std::cin >> choice;

        std::string name;
        float income;

        std::cout << "Enter name: " << std::endl; 
        std::cin >> name;  
        taxObj.setName(name);

        std::cout << "Enter income: $";
        std::cin >> income;
        taxObj.setIncome(income);

        taxObj.setFilingStatus(choice);

        if (choice == 'S') {
    float taxAmount = taxObj.singleTaxable(income);
    taxObj.setFederalIncomeTaxPaid(taxAmount);
  } else if (choice == 'M') {
    float taxAmount = taxObj.marriedTaxable(income);
    taxObj.setFederalIncomeTaxPaid(taxAmount);
  }
        
		taxObj.printInformation();
        
        std::cout << "Do you want to calculate tax for another person? (Y/N): ";
        std::cin >> choice;
    } while (choice == 'Y' || choice == 'y');

    return 0;
} 
