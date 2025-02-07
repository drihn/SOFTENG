import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF08090C),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 50, 15, 83),
            child: Column(
              children: const [
                TopBar(),
                SizedBox(height: 15),
                BalanceCard(),
                SizedBox(height: 15),
                BudgetCard(),
                SizedBox(height: 15),
                CategoriesCard(),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Image.asset('assets/menu_icon.png', width: 28),
          onPressed: () {},
          tooltip: 'Menu',
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: const Color(0xFF121418),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              const Text(
                '31 AUG 2023',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 5),
              Image.asset('assets/calendar_icon.png', width: 18),
            ],
          ),
        ),
        IconButton(
          icon: Image.asset('assets/notification_icon.png', width: 28),
          onPressed: () {},
          tooltip: 'Notifications',
        ),
      ],
    );
  }
}

class BalanceCard extends StatelessWidget {
  const BalanceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF121418),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Total Balance',
                style: TextStyle(
                  color: Color(0x80FFFFFF),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '₱26,000.00',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          Image.asset('assets/eye_icon.png', width: 24),
        ],
      ),
    );
  }
}

class BudgetCard extends StatelessWidget {
  const BudgetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 25),
      decoration: BoxDecoration(
        color: const Color(0xFF121418),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Budget',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color(0x1A6A66FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'All Budgets',
                  style: TextStyle(
                    color: Color(0xFF6A66FF),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: '₱14,500.00 ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'left',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                '-₱12,450.30 spent this month',
                style: TextStyle(
                  color: Color(0x4DFFFFFF),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Container(
            height: 6,
            decoration: BoxDecoration(
              color: const Color(0x1A6A66FF),
              borderRadius: BorderRadius.circular(19),
            ),
            child: Row(
              children: [
                Container(
                  width: 176,
                  decoration: BoxDecoration(
                    color: const Color(0xFF6A66FF),
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Container(
            height: 1,
            color: const Color(0x0DFFFFFF),
          ),
          const SizedBox(height: 25),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                BudgetCategoryItem(
                  icon: 'entertainment_icon.png',
                  title: 'Entertainment',
                  amount: '₱3,430',
                  color: Color(0x1A66FFA3),
                  textColor: Color(0xFF66FFA3),
                ),
                SizedBox(width: 10),
                BudgetCategoryItem(
                  icon: 'food_icon.png',
                  title: 'Food',
                  amount: '₱1,430',
                  color: Color(0x1AFF9466),
                  textColor: Color(0xFFFF9466),
                ),
                SizedBox(width: 10),
                BudgetCategoryItem(
                  icon: 'entertainment_icon.png',
                  title: 'Entertainment',
                  amount: '₱3,430',
                  color: Color(0x1A3DB9FF),
                  textColor: Color(0xFF3DB9FF),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BudgetCategoryItem extends StatelessWidget {
  final String icon;
  final String title;
  final String amount;
  final Color color;
  final Color textColor;

  const BudgetCategoryItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.amount,
    required this.color,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/$icon',
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                '$amount spent',
                style: TextStyle(
                  color: textColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class CategoriesCard extends StatelessWidget {
  const CategoriesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF121418),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Categories',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: const Color(0x1A6A66FF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Statistics',
                  style: TextStyle(
                    color: Color(0xFF6A66FF),
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 35),
          Image.asset(
            'assets/categories_chart.png',
            width: 197,
            height: 197,
          ),
          const SizedBox(height: 35),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                CategoryItem(
                  color: Color(0xFFFFD466),
                  title: 'Food',
                  amount: '₱3,430',
                ),
                SizedBox(width: 10),
                CategoryItem(
                  color: Color(0xFFFF9466),
                  title: 'Health',
                  amount: '₱560',
                ),
                SizedBox(width: 10),
                CategoryItem(
                  color: Color(0xFF66FFA3),
                  title: 'Transport',
                  amount: '₱210',
                ),
                SizedBox(width: 10),
                CategoryItem(
                  color: Color(0xFF3DB9FF),
                  title: 'Shopping',
                  amount: '₱3,430',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final Color color;
  final String title;
  final String amount;

  const CategoryItem({
    Key? key,
    required this.color,
    required this.title,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: color.withOpacity(0.05),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Row(
        children: [
          Container(
            width: 14,
            height: 14,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                amount,
                style: TextStyle(
                  color: color,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      decoration: BoxDecoration(
        color: const Color(0xF2121418),
        border: Border(
          top: BorderSide(
            color: Colors.white.withOpacity(0.05),
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavBarItem(
              icon: 'home_icon.png',
              label: 'Home',
              isActive: true,
              onTap: () {},
            ),
            NavBarItem(
              icon: 'records_icon.png',
              label: 'Records',
              isActive: false,
              onTap: () {},
            ),
            AddTransactionButton(
              onTap: () {},
            ),
            NavBarItem(
              icon: 'cards_icon.png',
              label: 'Cards',
              isActive: false,
              onTap: () {},
            ),
            NavBarItem(
              icon: 'menu_icon.png',
              label: 'Menu',
              isActive: false,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  const NavBarItem({
    Key? key,
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/$icon',
            width: 24,
            height: 24,
            color: isActive
                ? const Color(0xFF0068FF)
                : Colors.white.withOpacity(0.5),
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(
              color: isActive
                  ? const Color(0xFF0068FF)
                  : Colors.white.withOpacity(0.5),
              fontSize: 11,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class AddTransactionButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddTransactionButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 51,
        height: 51,
        decoration: BoxDecoration(
          color: const Color(0xFF0068FF),
          borderRadius: BorderRadius.circular(34),
        ),
        child: Center(
          child: Image.asset(
            'assets/add_icon.png',
            width: 25,
            height: 24,
          ),
        ),
      ),
    );
  }
}