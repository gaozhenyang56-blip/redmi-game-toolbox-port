.class Lcom/miui/permcenter/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/app/AppOpsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/permcenter/h$c;->a:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/miui/permcenter/h$c;->b:Landroid/app/AppOpsManager;

    return-void
.end method


# virtual methods
.method public onOpChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "MIUI:10004"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lcom/miui/permcenter/h$c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lcom/miui/permcenter/h$c;->b:Landroid/app/AppOpsManager;

    const/16 v2, 0x2714

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v2, v3, p2}, Landroid/app/AppOpsManagerCompat;->checkOpNoThrow(Landroid/app/AppOpsManager;IILjava/lang/String;)I

    move-result p2

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Lcom/miui/permcenter/h;->f(IZLmiui/telephony/SubscriptionInfo;)V

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "OperatorAddressManager"

    const-string v0, "package not found!"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
