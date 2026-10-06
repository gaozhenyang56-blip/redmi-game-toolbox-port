.class public Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;
.super Lmiui/app/backup/FullBackupAgent;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private a:Lcom/miui/antispam/service/backup/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/backup/FullBackupAgent;-><init>()V

    return-void
.end method


# virtual methods
.method protected getVersion(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .locals 3

    sget-object v0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->b:Ljava/lang/String;

    const-string v1, "feature"

    invoke-static {v0, p1, v1}, Lbh/e;->g(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Lmiui/app/backup/FullBackupAgent;->onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lhf/k;

    invoke-direct {v0}, Lhf/k;-><init>()V

    invoke-static {p1, p2, v0}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->restoreSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/settingsdk/backup/ICloudBackup;)V

    goto/16 :goto_7

    :cond_0
    const/4 p1, 0x2

    if-ne v0, p1, :cond_9

    new-instance p1, Lcom/miui/antispam/service/backup/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/miui/antispam/service/backup/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v0}, Lcom/miui/antispam/service/backup/n;->j(Ljava/io/InputStream;)Lcom/miui/antispam/service/backup/n;

    move-result-object p1

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_1

    const/4 p1, 0x6

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return p1

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/n;->c()Lcom/miui/antispam/service/backup/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->y()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/service/backup/h;

    iget-object v2, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v2, v1}, Lcom/miui/antispam/service/backup/a;->c(Lcom/miui/antispam/service/backup/h;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->s()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/service/backup/e;

    iget-object v2, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v2, v1}, Lcom/miui/antispam/service/backup/a;->a(Lcom/miui/antispam/service/backup/e;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->C()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/service/backup/l;

    iget-object v2, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v2, v1}, Lcom/miui/antispam/service/backup/a;->d(Lcom/miui/antispam/service/backup/l;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->w()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/service/backup/f;

    iget-object v2, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v2, v1}, Lcom/miui/antispam/service/backup/a;->b(Lcom/miui/antispam/service/backup/f;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->B()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/service/backup/k;

    iget-object v2, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v2, v1}, Lcom/miui/antispam/service/backup/a;->v(Lcom/miui/antispam/service/backup/k;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->x()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/antispam/service/backup/g;

    iget-object v2, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v2, v1}, Lcom/miui/antispam/service/backup/a;->s(Lcom/miui/antispam/service/backup/g;)V

    goto :goto_5

    :cond_7
    iget-object p2, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->r()Lcom/miui/antispam/service/backup/d;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/antispam/service/backup/a;->r(Lcom/miui/antispam/service/backup/d;)V

    iget-object p2, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->A()Lcom/miui/antispam/service/backup/j;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/antispam/service/backup/a;->u(Lcom/miui/antispam/service/backup/j;)V

    iget-object p2, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {p1}, Lcom/miui/antispam/service/backup/c;->z()Lcom/miui/antispam/service/backup/i;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/miui/antispam/service/backup/a;->t(Lcom/miui/antispam/service/backup/i;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    :catchall_0
    move-exception p1

    goto :goto_6

    :catchall_1
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    :goto_6
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :cond_8
    throw p1

    :cond_9
    :goto_7
    const/4 p1, 0x0

    return p1
.end method

.method protected onFullBackup(Landroid/os/ParcelFileDescriptor;I)I
    .locals 8

    const-string v0, "Cannot export blacklist and whitelist "

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    invoke-super {p0, p1, p2}, Lmiui/app/backup/FullBackupAgent;->onFullBackup(Landroid/os/ParcelFileDescriptor;I)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lhf/k;

    invoke-direct {v0}, Lhf/k;-><init>()V

    invoke-static {p2, p1, v0}, Lcom/xiaomi/settingsdk/backup/SettingsBackupHelper;->backupSettings(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Lcom/xiaomi/settingsdk/backup/ICloudBackup;)Lcom/xiaomi/settingsdk/backup/data/DataPackage;

    goto/16 :goto_a

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_8

    new-instance p2, Lcom/miui/antispam/service/backup/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/miui/antispam/service/backup/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-static {}, Lcom/miui/antispam/service/backup/c;->G()Lcom/miui/antispam/service/backup/c$b;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v1}, Lcom/miui/antispam/service/backup/a;->i()Ljava/util/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v2}, Lcom/miui/antispam/service/backup/a;->f()Ljava/util/Vector;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v3}, Lcom/miui/antispam/service/backup/a;->k()Ljava/util/Vector;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v4}, Lcom/miui/antispam/service/backup/a;->g()Ljava/util/Vector;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v5}, Lcom/miui/antispam/service/backup/a;->j()Ljava/util/Vector;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v6}, Lcom/miui/antispam/service/backup/a;->h()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/antispam/service/backup/h;

    invoke-virtual {p2, v7}, Lcom/miui/antispam/service/backup/c$b;->e(Lcom/miui/antispam/service/backup/h;)Lcom/miui/antispam/service/backup/c$b;

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antispam/service/backup/e;

    invoke-virtual {p2, v2}, Lcom/miui/antispam/service/backup/c$b;->b(Lcom/miui/antispam/service/backup/e;)Lcom/miui/antispam/service/backup/c$b;

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antispam/service/backup/l;

    invoke-virtual {p2, v2}, Lcom/miui/antispam/service/backup/c$b;->g(Lcom/miui/antispam/service/backup/l;)Lcom/miui/antispam/service/backup/c$b;

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antispam/service/backup/f;

    invoke-virtual {p2, v2}, Lcom/miui/antispam/service/backup/c$b;->c(Lcom/miui/antispam/service/backup/f;)Lcom/miui/antispam/service/backup/c$b;

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antispam/service/backup/k;

    invoke-virtual {p2, v2}, Lcom/miui/antispam/service/backup/c$b;->f(Lcom/miui/antispam/service/backup/k;)Lcom/miui/antispam/service/backup/c$b;

    goto :goto_4

    :cond_5
    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/antispam/service/backup/g;

    invoke-virtual {p2, v2}, Lcom/miui/antispam/service/backup/c$b;->d(Lcom/miui/antispam/service/backup/g;)Lcom/miui/antispam/service/backup/c$b;

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v1}, Lcom/miui/antispam/service/backup/a;->l()Lcom/miui/antispam/service/backup/d;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/antispam/service/backup/c$b;->x(Lcom/miui/antispam/service/backup/d;)Lcom/miui/antispam/service/backup/c$b;

    iget-object v1, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v1}, Lcom/miui/antispam/service/backup/a;->n()Lcom/miui/antispam/service/backup/j;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/antispam/service/backup/c$b;->z(Lcom/miui/antispam/service/backup/j;)Lcom/miui/antispam/service/backup/c$b;

    iget-object v1, p0, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->a:Lcom/miui/antispam/service/backup/a;

    invoke-virtual {v1}, Lcom/miui/antispam/service/backup/a;->m()Lcom/miui/antispam/service/backup/i;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/miui/antispam/service/backup/c$b;->y(Lcom/miui/antispam/service/backup/i;)Lcom/miui/antispam/service/backup/c$b;

    invoke-static {}, Lcom/miui/antispam/service/backup/n;->g()Lcom/miui/antispam/service/backup/n$b;

    move-result-object v1

    invoke-virtual {p2}, Lcom/miui/antispam/service/backup/c$b;->h()Lcom/miui/antispam/service/backup/c;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/miui/antispam/service/backup/n$b;->k(Lcom/miui/antispam/service/backup/c;)Lcom/miui/antispam/service/backup/n$b;

    const/4 p2, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Lcom/miui/antispam/service/backup/n$b;->b()Lcom/miui/antispam/service/backup/n;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/protobuf/AbstractMessageLite;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a

    :catchall_0
    move-exception p1

    move-object p2, v2

    goto :goto_9

    :catch_0
    move-exception p1

    move-object p2, v2

    goto :goto_6

    :catch_1
    move-exception p1

    move-object p2, v2

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_2
    move-exception p1

    :goto_6
    :try_start_2
    sget-object v1, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->b:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_8

    goto :goto_8

    :catch_3
    move-exception p1

    :goto_7
    sget-object v1, Lcom/miui/antispam/service/backup/SecurityCenterBackupAgent;->b:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p2, :cond_8

    :goto_8
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_a

    :goto_9
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    throw p1

    :cond_8
    :goto_a
    const/4 p1, 0x0

    return p1
.end method
