<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
        <img src="<?php echo base_url('asset/dist/img/AdminLTELogo.png') ?>" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">Perpustakaan</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="<?php echo base_url('asset/dist/img/user2-160x160.jpg') ?>" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">Admin</a>
            </div>
        </div>
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                <li class="nav-item">
                    <a href="<?php echo site_url('dashboard') ?>"class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-sliders-h"></i>
                        <p>
                            Setting Data Master
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo site_url('anggota') ?>" class="nav-link">
                                <i class="fas fa-users nav-icon"></i>
                                <p>List Anggota</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo site_url('buku') ?>" class="nav-link">
                                <i class="fas fa-book nav-icon"></i>
                                <p>List Buku</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo site_url('pengarang') ?>" class="nav-link">
                                <i class="fas fa-user-edit nav-icon"></i>
                                <p>Pengarang</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo site_url('penerbit') ?>" class="nav-link">
                                <i class="fas fa-book-reader nav-icon"></i>
                                <p>Penerbit</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo site_url('kategori') ?>" class="nav-link">
                                <i class="fas fa-layer-group nav-icon"></i>
                                <p>Kategori</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-people-carry"></i>
                        <p>
                            Transaksi
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo site_url('peminjaman') ?>" class="nav-link">
                                <i class="fas fa-file-export nav-icon"></i>
                                <p>Peminjaman</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo site_url('pengembalian') ?>" class="nav-link">
                                <i class="fas fa-file-import nav-icon"></i>
                                <p>Pengembalian</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo site_url('keuangan') ?>" class="nav-link">
                                <i class="fas fa-hand-holding-usd nav-icon"></i>
                                <p>Keuangan</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon far fa-clipboard"></i>
                        <p>
                            Laporan
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?php echo site_url('laporan/anggota') ?>" class="nav-link">
                            <i class="fas fa-users nav-icon"></i>
                                <p>Anggota</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo site_url('laporan/buku') ?>" class="nav-link">
                            <i class="fas fa-book nav-icon"></i>
                                <p>Buku</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo site_url('laporan/keuangan') ?>" class="nav-link">
                                <i class="fas fa-hand-holding-usd nav-icon"></i>
                                <p>Keuangan</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo site_url('laporan/peminjaman') ?>" class="nav-link">
                            <i class="fas fa-file-export nav-icon"></i>
                                <p>Peminjaman</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?php echo site_url('laporan/pengembalian') ?>" class="nav-link">
                            <i class="fas fa-file-import nav-icon"></i>
                                <p>Pengembalian</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="<?php echo site_url('login/logout') ?>" class="nav-link">
                        <i class="nav-icon fas fa-sign-out-alt"></i>
                        <p>
                            Log Out
                        </p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>