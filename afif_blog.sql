-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2021 at 03:29 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `afif_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Programming', 'web-programming', '2021-10-28 21:05:09', '2021-10-28 21:05:09'),
(2, 'DevOps', 'devops', '2021-10-28 21:05:09', '2021-10-28 21:05:09'),
(3, 'Cloud Computing', 'cloud-computing', '2021-10-28 21:05:09', '2021-10-28 21:05:09'),
(4, 'Operating System', 'operating-system', '2021-10-28 21:05:09', '2021-10-28 21:05:09'),
(5, 'Artificial Intelligence', 'artificial-intelligence', '2021-10-28 21:05:09', '2021-10-28 21:05:09'),
(6, 'Data Science', 'data-science', '2021-10-28 21:05:09', '2021-10-28 21:05:09'),
(7, 'Internet Of Things', 'iot', '2021-10-28 21:05:09', '2021-10-28 21:05:09'),
(8, 'Technology', 'technology', '2021-10-28 21:05:09', '2021-10-28 21:05:09'),
(9, 'Culture', 'culture', '2021-10-28 21:05:09', '2021-10-28 21:05:09'),
(10, 'Geography', 'geography', '2021-10-28 21:05:09', '2021-10-28 21:05:09'),
(11, 'Anime', 'anime', '2021-10-28 21:05:09', '2021-10-28 21:05:09'),
(12, 'Scout', 'scout', '2021-10-28 21:05:10', '2021-10-28 21:05:10'),
(13, 'Personal', 'personal', '2021-10-28 21:05:10', '2021-10-28 21:05:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_10_24_032608_create_posts_table', 1),
(6, '2021_10_24_082719_create_categories_table', 1),
(7, '2021_10_28_200155_add_is_admin_to_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `image`, `excerpt`, `body`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 4, 2, 'Ubuntu', 'ubuntu', 'post-images/xDkbpyDvpQZjCpg6dVGhGfLjUxas94rNvqIe6CH3.png', 'Ubuntu adalah distribusi Linux berdasarkan Debian dan sebagian besar terdiri dari perangkat lunak be...', '<div>Ubuntu adalah distribusi Linux berdasarkan Debian dan sebagian besar terdiri dari perangkat lunak bebas dan sumber terbuka. Ubuntu secara resmi dirilis dalam tiga edisi: Desktop, Server, dan Core for Internet of things devices and robots. Semua edisi dapat berjalan di komputer saja, atau di mesin virtual.<br><br>Bagaimana cara mengetahui daftar nama paket yang ada di repository Debian, Ubuntu, Linux Mint, Kali Linux, dan keluarganya?<br><br>Jawab:<br>$ sudo apt-get update<br>Lalu<br>$ apt-cache pkgnames | sort<br><br>Tanya:<br>Bagaimana cara menyimpan daftar nama tersebut ke dalam sebuah file?<br><br>Jawab:<br>$ apt-cache pkgnames | sort &gt; paket.txt<br><br>Tanya:<br>Saat kita menjalankan perintah<br>$ sudo apt-get update<br>apa yang sebenarnya terjadi?<br><br>Jawab:<br>Ubuntu akan men-download <em>package list</em> (daftar nama paket beserta deskripsi dan alamat file-nya) lalu menyimpannya di<br>/var/lib/apt/lists/<br><br>Tanya:<br>Setelah mengetahui nama-nama paket dengan perintah<br>$ apt-cache pkgnames | sort<br>bagaimana cara melihat rincian dari suatu paket? Misalnya untuk paket bernama libreoffice.<br><br>Jawab:<br>Gunakan perintah berikut di terminal<br>$ apt-cache show libreoffice<br><br>Tanya:<br>Di manakah saya bisa mengunduh installer Ubuntu?<br><br>Jawab:<br>• <a href=\"http://releases.ubuntu.com/\">http://releases.ubuntu.com/</a><br>• <a href=\"http://kambing.ui.ac.id/iso/\">http://kambing.ui.ac.id/iso/</a><br>• <a href=\"http://kartolo.sby.datautama.net.id/\">http://kartolo.sby.datautama.net.id/</a><br>• <a href=\"http://mirror.0x.sg/\">http://mirror.0x.sg/</a><br>• dll<br><br>Tanya:<br>Bagaimana dengan varian lain seperti Lubuntu, Xubuntu, Kubuntu, dsb?<br><br>Jawab:<br><a href=\"http://cdimage.ubuntu.com/\">http://cdimage.ubuntu.com/</a><br><br>Tanya:<br>Saya ingin install Ubuntu menggunakan flashdisk. Aplikasi apa yang harus saya gunakan?<br><br>Jawab:<br>Salah satu aplikasi yang bisa digunakan adalah YUMI.<br><a href=\"http://pendrivelinux.com/\">http://pendrivelinux.com</a><br><br>Tanya:<br>Jika kita membuka terminal, di direktori manakah kursornya berada secara default?<br><br>Jawab:<br>Misal user yang kita gunakan adalah edi maka kursor terminal secara default akan berada di direktori<br>/home/edi<br>Alamat direktori di mana kursor berada saat ini, bisa kita sebut current working directory (cwd). Alamat cwd bisa dicek menggunakan perintah pwd (print working directory).<br>$ pwd<br>Sedangkan direktori /home/edi dapat kita sebut sebagai default working directory (dwd) untuk user bernama edi.<br><br>Tanya:<br>Bagaimana cara melihat isi dari suatu folder (direktori)?<br><br>Jawab:<br>Gunakan perintah ls (list). Misalnya<br>$ ls<br>Untuk melihat isi dari suatu direktori yang bukan cwd (current working directory) gunakan perintah ls diikuti alamat direktorinya. Misalnya<br>$ ls /var/cache/apt/archives<br><br>Tanya:<br>Perintah ls hanya menampilkan nama file (atau direktori). Bisakah lebih detail?<br><br>Jawab:<br>Bisa. Tambahkan argumen tertentu. Misalnya<br>$ ls -ho<br>Untuk informasi lebih lanjut, bisa kita temukan di user manualnya.<br>$ man ls<br><br>Tanya:<br>Bagaimana cara untuk berpindah direktori?<br><br>Jawab:<br>Gunakan perintah cd. Misalnya<br>$ cd /boot/grub<br>Untuk berpindah ke direktori di atasnya, gunakan<br>$ cd ..<br>Untuk berpindah ke dwd (default working directory), gunakan<br>$ cd ~<br><br>Tanya:<br>Bagaimana cara membaca file paket.txt melalui terminal?<br><br>Jawab:<br>$ cat paket.txt<br>Jika file yang akan dibaca berada di suatu direktori yang bukan cwd (current working directory), sebutkan alamatnya secara lengkap. Misalnya<br>$ cat /boot/grub/grub.cfg<br>$ cat /etc/apt/sources.list<br><br>Tanya:<br>Bagaimana cara menampilkan nomor baris seperti di text editor berbasis GUI (graphical user interface)?<br><br>Jawab:<br>$ cat -n paket.txt<br>Untuk informasi lebih lanjut, baca<br>$ man cat<br><br>Tanya:<br>Bagaimana cara mengetahui jumlah barisnya tanpa menampilkan teksnya?<br><br>Jawab:<br>$ cat paket.txt | wc -l<br><br>Tanya:<br>Jika yang diinginkan adalah hanya menampilkan baris-baris yang mengandung apache, bagaimana caranya?<br><br>Jawab:<br>$ cat paket.txt | grep -i apache<br><br>Tanya:<br>Untuk menampilkan baris-baris yang tidak mengandung apache, bagaimana caranya?<br><br>Jawab:<br>$ cat paket.txt | grep -iv apache<br><br>Tanya:<br>Untuk menampilkan baris-baris yang mengandung apache tetapi tidak mengandung bin, bagaimana caranya?<br><br>Jawab:<br>$ cat paket.txt | grep -i apache | grep -iv bin<br><br>Tanya:<br>Untuk menampilkan baris-baris yang mengandung apache sekaligus mengandung bin (tanpa memperhatikan urutannya), bagaimana caranya?<br><br>Jawab:<br>$ cat paket.txt | grep -i apache | grep -i bin<br><br>Bagaimana cara shutdown melalui terminal?<br><br>Jawab:<br>$ sudo init 0<br>atau<br>$ sudo poweroff<br><br>Tanya:<br>Bagaimana cara restart?<br><br>Jawab:<br>$ sudo init 6<br>atau<br>$ sudo reboot<br><br>Tanya:<br>Bagaimana cara melihat tanggal atau waktu melalui terminal?<br><br>Jawab:<br>$ cal<br>atau<br>$ date<br>atau<br>$ timedatectl<br><br>Tanya:<br>Di manakah Ubuntu menyimpan pengaturan repository?<br><br>Jawab:<br>Di file<br>/etc/apt/sources.list<br>Untuk melihat isinya, gunakan perintah:<br>$ cat /etc/apt/sources.list<br>Untuk mengeditnya, gunakan perintah:<br>$ sudo nano /etc/apt/sources.list<br><br>Tanya:<br>Bagaimana cara menampilkan daftar nama paket yang ter-install?<br><br>Jawab:<br>$ dpkg --get-selections | grep -iv deinstall<br>atau<br>$ dpkg -l | grep -i ^ii<br><br>Tanya:<br>Bagaimana cara mengetahui versi Ubuntu yang sedang digunakan?<br><br>Jawab:<br>Buka terminal, ketik<br>$ lsb_release -a<br><br>Tanya:<br>Bagaimana cara menampilkan daftar partisi?<br><br>Jawab:<br>Buka terminal, ketik<br>$ lsblk<br>atau<br>$ sudo blkid<br>atau<br>$ sudo fdisk -l<br><br>Tanya:<br>Bagaimana cara mengetahui versi kernel, arsitektur yang digunakan, dsb?<br><br>Jawab:<br>Buka terminal, ketik<br>$ uname -r</div>', NULL, '2021-10-28 21:24:17', '2021-10-28 21:24:17'),
(2, 2, 2, 'Docker', 'docker', 'post-images/XE9eFKXFpBjzI2808VBUAuYzQLHj6yA3L3A37kPU.jpg', 'Docker OverviewDocker is an open platform for developing, shipping, and running applications. Docker...', '<div><strong>Docker Overview<br></strong>Docker is an open platform for developing, shipping, and running applications. Docker enables you to separate your applications from your infrastructure so you can deliver software quickly. With Docker, you can manage your infrastructure in the same ways you manage your applications. By taking advantage of Docker’s methodologies for shipping, testing, and deploying code quickly, you can significantly reduce the delay between writing code and running it in production.<br><br><strong>The Docker Platform<br></strong>Docker provides the ability to package and run an application in a loosely isolated environment called a container. The isolation and security allow you to run many containers simultaneously on a given host. Containers are lightweight and contain everything needed to run the application, so you do not need to rely on what is currently installed on the host. You can easily share containers while you work, and be sure that everyone you share with gets the same container that works in the same way.<br><br></div><div>Docker provides tooling and a platform to manage the lifecycle of your containers:<br><br></div><ul><li>Develop your application and its supporting components using containers.</li><li>The container becomes the unit for distributing and testing your application.</li><li>When you’re ready, deploy your application into your production environment, as a container or an orchestrated service. This works the same whether your production environment is a local data center, a cloud provider, or a hybrid of the two.</li></ul><div><strong>What can I use Docker for?<br><br>Fast, consistent delivery of your applications</strong></div><div>Docker streamlines the development lifecycle by allowing developers to work in standardized environments using local containers which provide your applications and services. Containers are great for continuous integration and continuous delivery (CI/CD) workflows.<br><br></div><div>Consider the following example scenario:<br><br></div><ul><li>Your developers write code locally and share their work with their colleagues using Docker containers.</li><li>They use Docker to push their applications into a test environment and execute automated and manual tests.</li><li>When developers find bugs, they can fix them in the development environment and redeploy them to the test environment for testing and validation.</li><li>When testing is complete, getting the fix to the customer is as simple as pushing the updated image to the production environment.</li></ul><div><strong>Responsive deployment and scaling</strong></div><div>Docker’s container-based platform allows for highly portable workloads. Docker containers can run on a developer’s local laptop, on physical or virtual machines in a data center, on cloud providers, or in a mixture of environments.<br><br></div><div>Docker’s portability and lightweight nature also make it easy to dynamically manage workloads, scaling up or tearing down applications and services as business needs dictate, in near real time.<br><br></div><div><strong>Running more workloads on the same hardware</strong></div><div>Docker is lightweight and fast. It provides a viable, cost-effective alternative to hypervisor-based virtual machines, so you can use more of your compute capacity to achieve your business goals. Docker is perfect for high density environments and for small and medium deployments where you need to do more with fewer resources.<br><br></div><div><br><strong>Docker architecture<br></strong>Docker uses a client-server architecture. The Docker <em>client</em> talks to the Docker <em>daemon</em>, which does the heavy lifting of building, running, and distributing your Docker containers. The Docker client and daemon <em>can</em> run on the same system, or you can connect a Docker client to a remote Docker daemon. The Docker client and daemon communicate using a REST API, over UNIX sockets or a network interface. Another Docker client is Docker Compose, that lets you work with applications consisting of a set of containers.<br><br><br>The Docker daemon</div><div>The Docker daemon (dockerd) listens for Docker API requests and manages Docker objects such as images, containers, networks, and volumes. A daemon can also communicate with other daemons to manage Docker services.<br><br></div><div><br>The Docker client</div><div>The Docker client (docker) is the primary way that many Docker users interact with Docker. When you use commands such as docker run, the client sends these commands to dockerd, which carries them out. The docker command uses the Docker API. The Docker client can communicate with more than one daemon.<br><br></div><div><br>Docker registries</div><div>A Docker <em>registry</em> stores Docker images. Docker Hub is a public registry that anyone can use, and Docker is configured to look for images on Docker Hub by default. You can even run your own private registry.<br><br></div><div>When you use the docker pull or docker run commands, the required images are pulled from your configured registry. When you use the docker push command, your image is pushed to your configured registry.<br><br></div><div><br>Docker objects</div><div>When you use Docker, you are creating and using images, containers, networks, volumes, plugins, and other objects. This section is a brief overview of some of those objects.<br><br></div><div><br>Images</div><div>An <em>image</em> is a read-only template with instructions for creating a Docker container. Often, an image is <em>based on</em> another image, with some additional customization. For example, you may build an image which is based on the ubuntu image, but installs the Apache web server and your application, as well as the configuration details needed to make your application run.<br><br></div><div>You might create your own images or you might only use those created by others and published in a registry. To build your own image, you create a <em>Dockerfile</em> with a simple syntax for defining the steps needed to create the image and run it. Each instruction in a Dockerfile creates a layer in the image. When you change the Dockerfile and rebuild the image, only those layers which have changed are rebuilt. This is part of what makes images so lightweight, small, and fast, when compared to other virtualization technologies.<br><br></div><div><br>Containers</div><div>A container is a runnable instance of an image. You can create, start, stop, move, or delete a container using the Docker API or CLI. You can connect a container to one or more networks, attach storage to it, or even create a new image based on its current state.<br><br></div><div>By default, a container is relatively well isolated from other containers and its host machine. You can control how isolated a container’s network, storage, or other underlying subsystems are from other containers or from the host machine.<br><br></div><div>A container is defined by its image as well as any configuration options you provide to it when you create or start it. When a container is removed, any changes to its state that are not stored in persistent storage disappear.</div>', NULL, '2021-10-28 21:34:01', '2021-10-28 21:34:01'),
(3, 3, 2, 'Amazon Web Services (AWS)', 'amazon-web-services', 'post-images/g8ZknKeZkTK9uyLW8WKmYGVSKXBNygIiAJ9RLfv2.jpg', 'Amazon Web Services, Inc. is a subsidiary of Amazon providing on-demand cloud computing platforms an...', '<div>Amazon Web Services, Inc. is a subsidiary of Amazon providing on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered pay-as-you-go basis.</div>', NULL, '2021-10-28 21:38:58', '2021-10-28 21:38:58'),
(4, 2, 2, 'Kubernetes', 'kubernetes', 'post-images/wej72Z8RP1SxWHpVRGCmeqK5hZvYmr1bOqKBfeBx.png', 'What is Kubernetes?This page is an overview of Kubernetes.Kubernetes is a portable, extensible, open...', '<h1>What is Kubernetes?</h1><div>This page is an overview of Kubernetes.<br><br></div><div>Kubernetes is a portable, extensible, open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available.<br><br></div><div>The name Kubernetes originates from Greek, meaning helmsman or pilot. K8s as an abbreviation results from counting the eight letters between the \"K\" and the \"s\". Google open-sourced the Kubernetes project in 2014. Kubernetes combines <a href=\"https://kubernetes.io/blog/2015/04/borg-predecessor-to-kubernetes/\">over 15 years of Google\'s experience</a> running production workloads at scale with best-of-breed ideas and practices from the community.<br><br></div><div><br>Going back in time<br><br></div><div>Let\'s take a look at why Kubernetes is so useful by going back in time.<br><br></div><div><strong>Traditional deployment era:</strong> Early on, organizations ran applications on physical servers. There was no way to define resource boundaries for applications in a physical server, and this caused resource allocation issues. For example, if multiple applications run on a physical server, there can be instances where one application would take up most of the resources, and as a result, the other applications would underperform. A solution for this would be to run each application on a different physical server. But this did not scale as resources were underutilized, and it was expensive for organizations to maintain many physical servers.<br><br></div><div><strong>Virtualized deployment era:</strong> As a solution, virtualization was introduced. It allows you to run multiple Virtual Machines (VMs) on a single physical server\'s CPU. Virtualization allows applications to be isolated between VMs and provides a level of security as the information of one application cannot be freely accessed by another application.<br><br></div><div>Virtualization allows better utilization of resources in a physical server and allows better scalability because an application can be added or updated easily, reduces hardware costs, and much more. With virtualization you can present a set of physical resources as a cluster of disposable virtual machines.<br><br></div><div>Each VM is a full machine running all the components, including its own operating system, on top of the virtualized hardware.<br><br></div><div><strong>Container deployment era:</strong> Containers are similar to VMs, but they have relaxed isolation properties to share the Operating System (OS) among the applications. Therefore, containers are considered lightweight. Similar to a VM, a container has its own filesystem, share of CPU, memory, process space, and more. As they are decoupled from the underlying infrastructure, they are portable across clouds and OS distributions.<br><br></div><div>Containers have become popular because they provide extra benefits, such as:<br><br></div><ul><li>Agile application creation and deployment: increased ease and efficiency of container image creation compared to VM image use.</li><li>Continuous development, integration, and deployment: provides for reliable and frequent container image build and deployment with quick and efficient rollbacks (due to image immutability).</li><li>Dev and Ops separation of concerns: create application container images at build/release time rather than deployment time, thereby decoupling applications from infrastructure.</li><li>Observability: not only surfaces OS-level information and metrics, but also application health and other signals.</li><li>Environmental consistency across development, testing, and production: Runs the same on a laptop as it does in the cloud.</li><li>Cloud and OS distribution portability: Runs on Ubuntu, RHEL, CoreOS, on-premises, on major public clouds, and anywhere else.</li><li>Application-centric management: Raises the level of abstraction from running an OS on virtual hardware to running an application on an OS using logical resources.</li><li>Loosely coupled, distributed, elastic, liberated micro-services: applications are broken into smaller, independent pieces and can be deployed and managed dynamically – not a monolithic stack running on one big single-purpose machine.</li><li>Resource isolation: predictable application performance.</li><li>Resource utilization: high efficiency and density.</li></ul><div><br>Why you need Kubernetes and what it can do<br><br></div><div>Containers are a good way to bundle and run your applications. In a production environment, you need to manage the containers that run the applications and ensure that there is no downtime. For example, if a container goes down, another container needs to start. Wouldn\'t it be easier if this behavior was handled by a system?<br><br></div><div>That\'s how Kubernetes comes to the rescue! Kubernetes provides you with a framework to run distributed systems resiliently. It takes care of scaling and failover for your application, provides deployment patterns, and more. For example, Kubernetes can easily manage a canary deployment for your system.<br><br></div><div>Kubernetes provides you with:<br><br></div><ul><li><strong>Service discovery and load balancing</strong> Kubernetes can expose a container using the DNS name or using their own IP address. If traffic to a container is high, Kubernetes is able to load balance and distribute the network traffic so that the deployment is stable.</li><li><strong>Storage orchestration</strong> Kubernetes allows you to automatically mount a storage system of your choice, such as local storages, public cloud providers, and more.</li><li><strong>Automated rollouts and rollbacks</strong> You can describe the desired state for your deployed containers using Kubernetes, and it can change the actual state to the desired state at a controlled rate. For example, you can automate Kubernetes to create new containers for your deployment, remove existing containers and adopt all their resources to the new container.</li><li><strong>Automatic bin packing</strong> You provide Kubernetes with a cluster of nodes that it can use to run containerized tasks. You tell Kubernetes how much CPU and memory (RAM) each container needs. Kubernetes can fit containers onto your nodes to make the best use of your resources.</li><li><strong>Self-healing</strong> Kubernetes restarts containers that fail, replaces containers, kills containers that don\'t respond to your user-defined health check, and doesn\'t advertise them to clients until they are ready to serve.</li><li><strong>Secret and configuration management</strong> Kubernetes lets you store and manage sensitive information, such as passwords, OAuth tokens, and SSH keys. You can deploy and update secrets and application configuration without rebuilding your container images, and without exposing secrets in your stack configuration.</li></ul><div><br>What Kubernetes is not<br><br></div><div>Kubernetes is not a traditional, all-inclusive PaaS (Platform as a Service) system. Since Kubernetes operates at the container level rather than at the hardware level, it provides some generally applicable features common to PaaS offerings, such as deployment, scaling, load balancing, and lets users integrate their logging, monitoring, and alerting solutions. However, Kubernetes is not monolithic, and these default solutions are optional and pluggable. Kubernetes provides the building blocks for building developer platforms, but preserves user choice and flexibility where it is important.<br><br></div><div>Kubernetes:<br><br></div><ul><li>Does not limit the types of applications supported. Kubernetes aims to support an extremely diverse variety of workloads, including stateless, stateful, and data-processing workloads. If an application can run in a container, it should run great on Kubernetes.</li><li>Does not deploy source code and does not build your application. Continuous Integration, Delivery, and Deployment (CI/CD) workflows are determined by organization cultures and preferences as well as technical requirements.</li><li>Does not provide application-level services, such as middleware (for example, message buses), data-processing frameworks (for example, Spark), databases (for example, MySQL), caches, nor cluster storage systems (for example, Ceph) as built-in services. Such components can run on Kubernetes, and/or can be accessed by applications running on Kubernetes through portable mechanisms, such as the <a href=\"https://openservicebrokerapi.org/\">Open Service Broker</a>.</li><li>Does not dictate logging, monitoring, or alerting solutions. It provides some integrations as proof of concept, and mechanisms to collect and export metrics.</li><li>Does not provide nor mandate a configuration language/system (for example, Jsonnet). It provides a declarative API that may be targeted by arbitrary forms of declarative specifications.</li><li>Does not provide nor adopt any comprehensive machine configuration, maintenance, management, or self-healing systems.</li><li>Additionally, Kubernetes is not a mere orchestration system. In fact, it eliminates the need for orchestration. The technical definition of orchestration is execution of a defined workflow: first do A, then B, then C. In contrast, Kubernetes comprises a set of independent, composable control processes that continuously drive the current state towards the provided desired state. It shouldn\'t matter how you get from A to C. Centralized control is also not required. This results in a system that is easier to use and more powerful, robust, resilient, and extensible.</li></ul>', NULL, '2021-10-28 21:42:02', '2021-10-28 21:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'Administrator', 'administrator', 'admin@gmail.com', NULL, '$2y$10$QK1VBToIuo9UN8k4/7JXcehvVanUdPKxtdOXNp4OAzc8TJuGOh8O.', NULL, '2021-10-28 21:05:08', '2021-10-28 21:05:08', 1),
(2, 'Author Account', 'guest-author', 'author@gmail.com', NULL, '$2y$10$TxEBOW0CfggB45MJFRi2c.6ZzMXRdzSWmftlg5R3nBS6aZqE5pM3S', NULL, '2021-10-28 21:05:09', '2021-10-28 21:05:09', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
