.class Lcom/miui/applicationlock/ConfirmAccountActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ConfirmAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

.field final synthetic b:Lcom/miui/applicationlock/ConfirmAccountActivity;


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/ConfirmAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->b:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/ConfirmAccountActivity;Lcom/miui/applicationlock/ConfirmAccountActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ConfirmAccountActivity$e;-><init>(Lcom/miui/applicationlock/ConfirmAccountActivity;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    const-string p1, "ParcelFileDescriptor close exception"

    const-string v0, "ConfirmAccountActivity"

    invoke-static {p2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->a:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    iget-object p2, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->b:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-static {p2}, Lcom/miui/applicationlock/ConfirmAccountActivity;->g0(Lcom/miui/applicationlock/ConfirmAccountActivity;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->b:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08081a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->b:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-static {v1}, Lcom/miui/applicationlock/ConfirmAccountActivity;->h0(Lcom/miui/applicationlock/ConfirmAccountActivity;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->a:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->b:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-static {v2}, Lcom/miui/applicationlock/ConfirmAccountActivity;->h0(Lcom/miui/applicationlock/ConfirmAccountActivity;)Landroid/accounts/Account;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;->b3(Landroid/accounts/Account;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v6, v2, 0x2

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lc3/f;->z0(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->b:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-static {v3}, Lcom/miui/applicationlock/ConfirmAccountActivity;->g0(Lcom/miui/applicationlock/ConfirmAccountActivity;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    move-object v1, p2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->b:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object p2, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->a:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catchall_0
    move-exception v2

    move-object v1, p2

    goto :goto_3

    :catch_2
    move-exception v2

    move-object v1, p2

    :goto_1
    :try_start_3
    const-string v3, "Fail getAvatarFd"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v2, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->b:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object p2, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->a:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    return-void

    :catchall_1
    move-exception v2

    :goto_3
    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->b:Lcom/miui/applicationlock/ConfirmAccountActivity;

    invoke-virtual {v3, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object p2, p0, Lcom/miui/applicationlock/ConfirmAccountActivity$e;->a:Lcom/xiaomi/accountsdk/account/IXiaomiAccountService;

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_4
    throw v2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
