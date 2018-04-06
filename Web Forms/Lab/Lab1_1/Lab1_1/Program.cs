using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Lab1_1
{

    class Salter
    {
        private int soldTickets = 0;
        private int totalTurnover = 0;

        public Salter()
        {
        }

        public Salter(int soldTickets = 0, int totalTurnover = 0)
        {
            this.soldTickets = soldTickets;
            this.totalTurnover = totalTurnover;
        }

        public void setSoldTickets(int sold)
        {
            this.soldTickets = sold;
        }

        public int getSoldTickets()
        {
            return this.soldTickets;
        }

        public void setTotalTurnover(int total)
        {
            this.totalTurnover = total;
        }

        public int getTotalTurnover()
        {
            return this.totalTurnover;
        }

    }

   class Customer
    {
        private string name;
        private string lastName;
        private int age;
        private string destination;
        private bool served;
        private int numSalter;

        public Customer(string name, string lastName, int age, string destination, int numSalter)
        {
            this.name = name;
            this.lastName = lastName;
            this.age = age;
            this.destination = destination;
            this.numSalter = numSalter;
        }

        public int getNumSalter()
        {
            return this.numSalter;
        }

        public void setServed(bool served)
        {
            this.served = served;
        }

        public bool getServed()
        {
            return this.served;
        }
    }

    public class Sale
    {
        public DateTime Date { get; set; }
        public int Cost { get; set; }
        public int numSalter { get; set; }
    }

    class Program
    {
        static void Main(string[] args)
        {
            ArrayList customers = new ArrayList();
            ArrayList sales = new ArrayList();
            int choice = 0;
            int totalProfit = 0;
            string[] destinations = { "Rim", "London", "Tokio", "Sofija", "Istanbul", "Toronto", "Majami", "Zagreb", "Belgrad", "Moskva" };

            Console.WriteLine("Vnesete broj na salteri: ");
            int numSalteri = Convert.ToInt16(Console.ReadLine());
            Salter[] salteri = new Salter[numSalteri];
            for(int i = 0; i < numSalteri; i++)
            {
                salteri[i] = new Salter();
            }

            while (choice != 3)
            {
                Console.WriteLine("Za proverka na podatoci pritisnete 1, za usluga na klient pritisnete 2, za izlez 3");
                choice = Convert.ToInt16(Console.ReadLine());
                if (choice == 1)
                {
                    Console.WriteLine("Za prodadeni karti na odreden salter pritisnete 1, vkupen promet na odreden salter pritisnete 2, site prodadeni karti 3, vkupen promet 4, uspesnost 5");
                    int inChoice = Convert.ToInt16(Console.ReadLine());
                    switch (inChoice)
                    {
                        case 1:
                            int ticketsSold = 0;

                            Console.WriteLine("Vnesete broj na salter: ");
                            int numSalter = Convert.ToInt16(Console.ReadLine());

                            Console.WriteLine("Vnesete datum: ");
                            string date = Console.ReadLine();

                            foreach(Sale sale in sales)
                            {
                                DateTime d = sale.Date;
                                string sD = Convert.ToString(d);
                                string[] parts = sD.Split(null);

                                if (parts[0].Equals(date))
                                {
                                    if(sale.numSalter == numSalter)
                                    {
                                        ticketsSold++;
                                    }
                                }                        
                            }

                            Console.WriteLine(ticketsSold);
                            break;

                        case 2:
                            int turnover = 0;

                            Console.WriteLine("Vnesete broj na salter: ");
                            numSalter = Convert.ToInt16(Console.ReadLine());

                            Console.WriteLine("Vnesete datum: ");
                            date = Console.ReadLine();

                            foreach (Sale sale in sales)
                            {
                                DateTime d = sale.Date;
                                string sD = Convert.ToString(d);
                                string[] parts = sD.Split(null);
                                if (parts[0].Equals(date))
                                {
                                    if (sale.numSalter == numSalter)
                                    {
                                        turnover += sale.Cost;
                                    }
                                }
                            }
                            Console.WriteLine(turnover);
                            break;

                        case 3:
                            Console.WriteLine("Vnesete datum: ");
                            date = Console.ReadLine();
                            int[] salteriTurnover = new int[numSalteri];
                            int[] salteriTickets = new int[numSalteri];
                            foreach (Sale sale in sales)
                            {
                                DateTime d = sale.Date;
                                string sD = Convert.ToString(d);
                                string[] parts = sD.Split(null);

                                if (parts[0].Equals(date))
                                {
                                    for(int i = 0; i < numSalteri; i++)
                                    {
                                        if(i == sale.numSalter)
                                        {
                                            salteriTurnover[i] += sale.Cost;
                                            salteriTickets[i]++;
                                            break;
                                        }
                                    }
                                }
                            }
                            for(int i = 0; i < numSalteri; i++)
                            {
                                Console.WriteLine("Salter {0} ima promet: {1} i {2} karti prodadeno", i, salteriTurnover[i], salteriTickets[i]);
                            }
                            break;

                        case 4:
                            foreach(Sale sale in sales)
                            {
                                totalProfit += sale.Cost;
                            }
                            Console.WriteLine("Vkupen promet e: {0}", totalProfit);
                            break;

                        case 5:
                            int totalServed = 0;
                            foreach(Customer c in customers)
                            {
                                bool customerServed = c.getServed();
                                if (customerServed)
                                {
                                    totalServed++;
                                    Console.WriteLine("im in");
                                }
                            }
                            float percentServed = (float)totalServed / customers.Count;
                            percentServed *= 100;
                            Console.WriteLine("Uspesnot e: {0}%", percentServed);
                            continue;
                        default:
                            break;
                    }
                }
                else if(choice == 2)
                {
                    Console.WriteLine("Vnesete go vaseto ime: ");
                    string name = Console.ReadLine();

                    Console.WriteLine("Vnesete go vaseto prezime: ");
                    string lastName = Console.ReadLine();

                    Console.WriteLine("Vnesete gi vasite godini: ");
                    int age = Convert.ToInt16(Console.ReadLine());

                    Console.WriteLine("Vnesete ja vasata destinacija: ");
                    string destination = Console.ReadLine();

                    Console.WriteLine("Vnesete go brojot na salter: ");
                    int numSalter = Convert.ToInt16(Console.ReadLine());

                    Customer c = new Customer(name, lastName, age, destination, numSalter);
                    customers.Add(c);

                    bool served = false;
                    foreach (string s in destinations)
                    {
                        if (s.Equals(destination))
                        {
                            served = true;
                            c.setServed(served);

                            int price = destination.Length * 2000;
                            int tTurnover = salteri[numSalter].getTotalTurnover();
                            tTurnover += price;
                            salteri[numSalter].setTotalTurnover(tTurnover);

                            int soldT = salteri[numSalter].getSoldTickets();
                            soldT++;
                            salteri[numSalter].setSoldTickets(soldT);

                            Sale sale = new Sale();
                            sale.Date = DateTime.Now;
                            sale.numSalter = numSalter;
                            sale.Cost = price;

                            sales.Add(sale);
                        }
                    }

                    if (!served)
                    {
                        Console.WriteLine("Ne postoi taa destinacija");
                    }
                }
                else
                {
                    break;
                }
            }
        }
    }
}
