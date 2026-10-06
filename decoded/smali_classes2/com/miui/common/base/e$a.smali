.class Lcom/miui/common/base/e$a;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/common/base/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lcom/miui/common/base/BaseActivity;

.field private final k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/miui/common/base/BaseActivity;)V
    .locals 2

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/common/base/e$a;->k:Landroid/os/Handler;

    iput-object p1, p0, Lcom/miui/common/base/e$a;->a:Lcom/miui/common/base/BaseActivity;

    return-void
.end method

.method private synthetic o8(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lgh/b;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/common/base/e$a;->a:Lcom/miui/common/base/BaseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_0
    const-string p1, "ManagerInterceptHelper"

    const-string v0, "Installation error, go to store installation"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/common/base/e$a;->a:Lcom/miui/common/base/BaseActivity;

    invoke-static {p1}, Lgh/b;->o(Landroid/content/Context;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/common/base/e$a;->a:Lcom/miui/common/base/BaseActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    return-void
.end method

.method public static synthetic v1(Lcom/miui/common/base/e$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/common/base/e$a;->o8(I)V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "returnCode = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", msg = "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "ManagerInterceptHelper"

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/common/base/e$a;->k:Landroid/os/Handler;

    new-instance p3, Lcom/miui/common/base/d;

    invoke-direct {p3, p0, p2}, Lcom/miui/common/base/d;-><init>(Lcom/miui/common/base/e$a;I)V

    const/4 p4, 0x1

    if-ne p2, p4, :cond_0

    const-wide/16 v0, 0x1f4

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p1, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
