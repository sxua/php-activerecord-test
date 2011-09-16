-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: connecteam
-- ------------------------------------------------------
-- Server version	5.1.49-1ubuntu8.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Article','<h3>Neither sustainable nor just: the current financial system</h3> \n \n<p>The story of money is the backstory of history, and some see in it a catalogue of the largest <a href=\"www.youtube.com/watch?v=LR4H8hYck6w\">fraud</a> and <a href=\"http://www.google.co.in/search?q=define%3A+seigniorage\">theft</a> campaign in history, the present problems being no exception. And while the principles of economics could be explained to a child, few adults know how national money is created, how all countries can be in debt, or how banks make most of their money. So let s address these matters before proceeding.\n<dl> \n<dt>How is national money created?</dt> \n<dd>When people, businesses or even governments go to the bank and borrow money, the money is created in the borrower\'s account. The money is then destroyed, or neutralised, when it is repaid.</dd> \n<dt>How can all countries be debt?</dt> \n<dd>Because all countries use money which is issued by banks. Furthermore, as the economy grows and more money is needed, countries get further into debt to banks. All debts are at interest, of course.</dd> \n<dt>How do banks make most of their money?</dt> \n<dd>Banks make most of their money by lending money they created. This is many multiples of what they have on deposit.</dd> \n</dl> \n \n</p><p>This way of creating money has become very well established over the last 300 years, and banking has played an increasingly important role in world events, the present problems being no exception. There are some serious problems with this way of issuing money, but there is no popular discussion about these.</p> \n \n<dl> \n<dt>Usury as a sin</dt> \n<dd>Learning from policies which contributed to the collapse of the Roman empire, the Catholic church made <a href=\"http://www.ewtn.com/library/ENCYC/B14VIXPE.htm\">usuary</a> illegal, since it tends towards the accumulation of all the capital by a wealthy minority, and to a broken economy.</dd> \n<blockquote>\"Permit me to issue and control the money of a nation, and I care not who makes its laws.\"\n<br /><em>Mayer Amschel Rothschild</em></blockquote> \n \n<dt>Fractional reserve banking is normalised fraud.</dt> \n<dd>Banks lend out, at interest, many times more money (at least ten) than they hold on deposit. The bank earns interest at least ten times over on the money deposited in it. This is called fractional reserve banking. It puts a lot of liquidity into the money system, but it means only a few people can actually hold their money at the same time or the bank is insolvent.   Lending more money than is held on deposit is fraudulent because it exposes both bank and creditors to risk.</dd> \n \n<blockquote>\"On September 1, 1894, we will not renew our loans under any consideration. On September 1, we will demand our money. We will foreclose and become mortgagees in possession. We can take two-thirds of the farms west of the Mississippi, and thousands of them east of the Mississippi as well, at our own price . . . Then the farmers will become tenants as in England.\"\n<br /><em>American Bankers Association, 1891</em></blockquote> \n \n<dt>The hand that borrows is beneath the hand that lends</dt> \n<dd>Of course, governments can issue their own money, but the case has been made again and again (by the banks) that governments can rarely resist the temptation to manipulate the money, and that for the sake of stability, money should be issued by banks. This means the fortunate owners of the bank have the best possible customer - a government, with the people\'s taxes as collateral. It also means that these private interests have a stranglehold over the public\'s money supply</dd> \n \n<blockquote>The system is private, conducted for the sole purpose of obtaining the greatest possible profits from the use of other people\'s money...They know when to create panics to their advantage. They also know when to stop panic. Inflation and deflation work equally well for them when they control finance.\n<br /><em>Charles Lindberg, congressman 1906-1922</em></blockquote> \n<dt>Contrary to its stated aim, the system is unstable</dt> \n<dd>The central banks usually have a mandate and an expectation that they will ensure stability. Fiscal stability is rare, however. Instead the economy wobbles on a knife edge. This wobble is euphemistically known as the business cycle. </dd> \n \n<dt>Perpetual growth</dt> \n<dd>With more money being borrowed all the time to pay off the interest, we are locked into a cycle of economic growth. Indeed if the economy does not grow it is regarded as very sick. Growth was desirable in the 19th Century, but now we understand that growth does not correspond to happiness, but to environmental depletion and carbon emissions.</dd> \n \n<dt>Money no longer has any actual value</dt> \n<dd>Most central banks provide the nation\'s money supply. In the old days we were trading in gold and promises and many other mechanisms, but we have settled on paper money with no intrinsic value. The real value of the money we are circulating is held by the banks and used for their ends.  Most people don\'t realise it, but money is no longer backed by gold or anything but the fact that the government guarantees to use it. The value of a nation\'s money depends absolutely on the people\'s trust in the government to accept that money as payment for taxes. In the event of a crisis, the people are left with worthless paper, while the banks buy up all their assets. In fact  crises offer considerable opportunities for banks who play their cards right. </dd> \n \n<dt>Inflation</dt> \n<dd>Where new money in circulation is not matched by more value in the economy, this leads to inflation. It is often regarded as a hidden tax. It means that simply holding money is not a good way to store wealth.</dd> \n \n<dt>This money is scarce by definition</dt> \n<dd>This shortage of money to pay the interest means that money is \'scarce\', and users of the money have to compete for it. That interest is ultimately paid off from other loans, which means the amount of money in circulation is always growing, but never sufficient. This scarcity necessitates occasional bankruptcies and taints all our feelings towards money.</dd> \n \n<dt>The values that come with this money are not human values</dt> \n<dd>Why are mothers not paid for child rearing, but encouraged to work and pay a nursery instead? Why are children not paid to be educated? Why must those unable to work live off handouts from government? Money is designed to emanate and flow around our industrial production. The creation of goods and the exploitation of resources is what creates wealth, and the flow and distributioni of money reflects those values.</dd> \n</dl> \n \n<p>The role of banks in issuing money is rarely questioned and neither the discipline of economics nor the current talk of banking and fiscal reform addresses any of these issues. The system is designed to increase the gap between rich and poor, and to grow indefinitely on a finite planet. Many hitherto ignored economists feel that the economic paradigm that has dominated since WWII has been discredited and is limping towards the grave, but that doesn\'t stop vested interests from perpetuating the system using any means at their disposal - massaging the data, printing money, and allegedly, warmongering, just to keep money circulating. How long can they keep up this pretense? And what will happen after that?\n \n<h4>The wider political narrative</h4> \n</p><p>It is said that the love of money is the root of all evil, and a strong case can be made for this today. The money we use has certainly been an tool for prosperity, at least in some areas. The money we use has a tendency to clump together, like the primordial dust clouds coagulating to form stars between incomprehensible voids of space. The more universal the money, the more easily it can flow from poor to rich people and countries.</p> \n \n<p>Poor countries are like poor people. Loan sharks call on them, promising things will be better if they borrow money now. They often don\'t have the expertise to test those claims. When the investment plan doesn\'t work out, the countries are stuck paying interest on loans indefinitely, and become pawns in the games of rich countries.</p> \n \n<p>Nor do the middle classes (who generate most of the wealth) benefit much from a system where all the money goes to the top. In the 60s shorter working hours because new machines would do all the work, yet middle classes in the US have <a href=\"http://www.huffingtonpost.com/elizabeth-warren/america-without-a-middle_b_377829.html\">barely seen</a> an improvement in their standard of living since then. Because economies need to grow continuously, and because organisations need to compete for money, we now send nursing mothers out to work so families can compete for the same sized piece of a much bigger pie.</p> \n \n<p>A clear set of values can be inferred from these symptoms, and we should see that while this kind of money clearly facilitates the increase of overall wealth, it does so at the expense of the poor. Professions are not valued for their usefulness to society, but by some <a href=\"http://www.neweconomics.org/publications/bit-rich\">other criteria</a>, which infamously values teachers and nurses very little, and investment bankers very highly.</p> \n \n<p>For many years, countries and people have been living more and more on credit. This is a Faustian arrangement because they got richer, at least on paper, but the banks own them. When the banks collapsed because they were over leveraged, they called their loans in so the whole economy was short of money. Governments gave banks taxpayer\'s money to help them continue lending, but the banks just sat on the money because it wasn\'t safe to lend. This whole arrangement is insane because governments don\'t need to borrow money at interest, they can issue their own for free.</p> \n \n<blockquote>\"I am a most unhappy man. I have unwittingly ruined my country. A great industrial nation is controlled by its system of credit. Our system of credit is concentrated. The growth of the nation, therefore, and all our activities are in the hands of a few men. We have come to be one of the worst ruled, one of the most completely controlled governments in the civilized world. No longer a government of free opinion, no longer a government by the vote of the majority, but a government by the opinion and duress of a small group of dominant men.<br /><em>Woodrow Wilson</em></blockquote> \n \n<p>So why do countries pay banks for the service of issuing money? Well there is an economic case to be made but unfortunately the decisions are usually put in the hands of people who don\'t understand the system - MPs and congressmen. This makes it easy for powerful interests to influence the vote, through lobbying, or putting their people in government. The Federal Reserve, for example was created by an act of congress passed on Christmas Eve, when the house was empty. President Wilson who let that happen lived to regret his mistake</p> \n \n<h3>Functions of money</h3> \n<p>The two most important functions of money would ideally have different properties. The main functions of money are:</p> \n<ol><li>as a medium of exchange</li> \n<li>as a store of wealth</li></ol> \n \n<p>A medium of exchange need not have any intrinsic value. The idea is simply to keep account of who owes who how much. It should be divisable into different denominations, and (if not digital) durable so it doesn\'t wear out in people\'s pockets. It should be hard to copy. One very interesting optional property is that it would lose value over time. This encourages people to exchange it rather than save it, and it is the quantity and quality of these actual exchanges which improve people\'s lives</p> \n \n<p>A store of value should have intrinsic worth. Property is a good store of value, but very hard to trade. Partly for traditional reasons (it doesn\'t have many industrial uses), gold is the de facto store of value internationally. It is compact, durable, divisible, scarce, and easy enough to test. Ideally, a store of value would appreciate over time, and become more valuable.</p> \n \nThe current system performs neither of these functions well. Money is not a good long term store of value because inflation is built into the fractional reserve system, and because the value of currency depends too much on government policy. Neither is this money a good medium of exchange because it is scarce, and that makes people reluctant to exchange it.\n \n<h3>Alternative financial tools</h3> \n<p>There are many examples, more and less radical, across history and geography, of alternative ways to facilitate trade and store wealth. It may seem unthinkable, especially in a globalised economy, but while we hold and exchange money issued at interest, we are agents in our own enslavement. Alternative means need to be rediscovered and used at scale, if we are to live in a paradigm of abundance, rather than scarcity.</p> \n \n<p>This account does not include initiatives such as coops or building societies. Coops challenge the idea that the organisation needs to be owned by wealthy shareholders, while building societies highlight that people are perfectly capable of lending money to each other without over leveraging. Microcredit has also lifted many people out of poverty by popularising banking services. These structures challenge the idea that the rich should own and manage everyone elses money but they do not challenge the issuance of money at interest, so will not be discussed further.</p> \n \n<p>Perhaps the best known example in recent history was the greenback dollar, issued by Abraham Lincoln to pay troops in the American civil war. These were very successful and circulated for a long time, and saw the country through a period of prosperity after the war. Some of the Latin American governments and local governments are innovating today in this and related fields. In the west we have scattered examples of interest free money, in <a href=\"http://www.nordspar.se/\">Switzerland</a>, or <a href=\"http://www.nordspar.se/\">Norway</a> for example.</p> \n \n<p>There are many proposals for such <a href=\"http://www.forumforstablecurrencies.org.uk/\">reforms</a> at the <A href=\"http://www.newciv.org/whole/globalresource.html\">highest levels</a>, but few make headway, perhaps because the subject is oblique, or unemotive.\n \n</p><p>In day-to-day transactions, there are also alternatives with a rich history. In the US colonies and the depression era when money was extra scarce, scrip currencies leapt in and enabled people to trade. Scrip is really just an IOU, usually from a trusted body. It circulates just like bank notes, but unlike bank notes, scrip is ultimately redeemable for something of value. Such transactions have always being happening more or less informally. The recent cash crisis saw a resurgence in participation in <a href=\"http://www.irta.com\">business barter networks</a>, for example</p> \n \n<p>Right now we are seeing a resurgence of another kind of money - localised dollars. This model is being pushed by <a href=\"http://transitiontowns.org\">Transition Towns</a> and the <a href=\"http://www.neweconomics.org/\">New Economics Foundation</a>, but there have been a number of successful projects already. The idea is that people buy pieces of paper with face value in the national currency, but which can only be spent locally. Then the local businesses may offer preferential rates to users of the local notes. The agenda here is usually to tempt shoppers out of the supermarkets and to create local employment and hence sustainability. Some argue that these initiatives don\'t go far enough, because they do not solve the problems of interest, scarcity, problems with the currency at a national level, or the way we value goods and services.</p> \n \n<p>In the 1980s and 90s, mutual credit became fashionable with the formulation of LETS. Mutual credit is issued not by a central authority but by the users themselves. It is backed by the goods and services which the users of the currency have to offer. Mutual credit system as an elaborate network of IOUs with no money ever changing hands. These systems required a lot of accounting and too few communities were able to <a href =\"http://communityforge.net\">take advantage of the internet</a>.</p> \n \n<p>The internet now allows much better coordination between activists and projects, and all kinds of ideas are circulating. However, since currency projects need the buy-in of whole communities, new ideas still take a while to get off the ground.</p> \n \nMore information from the <a href=\"http://comunityforge.net/resources\">Community Forge</a> resource page.\n \n \n<hr /> \n<h3>Response to global situation</h3> \n<p>To those with eyes and ears, it is becoming ever clearer that the issues of the 21st Century (i.e. climate change, sea level rise, species loss, demographics, energy scarcity and poverty) will not be addressed by the dominant institutions, governments and corporations. These bodies show themselves incapable of acting for the common good, in times of boom or bust. We might therefore take these responsibilities on ourselves:\n \n<ul> \n<li><strong>Decentralise communication networks</strong> - Governments are leveraging increasing power by monitoring and sometimes blocking our telecommunications. This makes <a href=\"http://www.independent.co.uk/opinion/commentators/boyd-tonkin-the-scribblings-of-dreamers-are-catharsis-not-crime-400003.html\">thought crimes</a> possible, and <a href=\"http://www.bloomberg.com/apps/news?pid=20601087&sid=anh.uW3gNZp4\">resistance to tyranny</a> very difficult.</li> \n \n<li><strong>Local energy production</strong>. Any locality or organisation that finds itself without sufficient energy, for whatever reason, will be severely hampered. Communities need to work together and invest in appropriate energy solutions.</li> \n \n<li><strong>Food</strong> will become more and more expensive, and mass produced food is likely to decrease in quality. We can no longer take food for granted. We need to revive old, and develop new skills for food production. Embracing <a href=\"http://en.wikipedia.org/wiki/Permaculture\">permaculture</a> would be a good start.\n \n<blockquote>\"The issue which has swept down the centuries and which will have to be fought sooner or later is the People vs. The Banks.â€\n<br /><em>Lord Acton, Lord Chief Justice of England, 1875</em></blockquote> \n \n</li><li><p><strong>The democratisation of money</strong> is harder than all these. When we use national money in our community, the web of uncounted obligations that defines a community is torn.*[Lietaer, the Future of Money] Yet corporations and governments are nothing without money. Whether we hold or spend their money, they gain, through taxation, profits, interest, and seigneurage.</p> \n \n<p>When we use local money, we express trust in our neighbours to accept and value that money; we have more of a say over the quantity and direction of tax revenues, and we can expect the money to circulate faster, increasing our real wealth. In local money systems, we know that there won\'t be money shortages, we reduce our ecological footprint by meeting our needs more locally, and we take control of our lives from the national level to the local level.</p></li> \n</ul> \nMoney needs to be taken out of the hands of bankers and redesigned to meet 21st Century needs. This means creating it by some other means than debt, and considering stability, social justice and human wellbeing rather than optimising economic growth.</p>','2011-04-03 15:33:40'),(2,'Photo','<a href=\"http://www.flickr.com/photos/lynhana/416152814/\" title=\"- by +lyn, on Flickr\"><img src=\"http://farm1.static.flickr.com/162/416152814_8f7ffb4bb1.jpg\" width=\"500\" height=\"335\" alt=\"-\"></a>','2011-04-03 15:38:42');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-04-04  8:56:12