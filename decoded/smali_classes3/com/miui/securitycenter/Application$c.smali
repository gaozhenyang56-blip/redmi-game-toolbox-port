.class Lcom/miui/securitycenter/Application$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/Application;->Y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/Application;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/Application;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/Application$c;->a:Lcom/miui/securitycenter/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/securitycenter/Application$c;->a:Lcom/miui/securitycenter/Application;

    invoke-static {v0}, Lcom/miui/permcenter/privacymanager/widget/a;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securitycenter/Application$c;->a:Lcom/miui/securitycenter/Application;

    invoke-static {v1}, Lcom/miui/securityscan/job/ScanJobService;->c(Landroid/content/Context;)V

    :cond_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/miui/securitycenter/Application$c;->a:Lcom/miui/securitycenter/Application;

    const-class v4, Lcom/miui/permcenter/privacymanager/widget/BehaviorWidget;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/miui/securitycenter/Application$c;->a:Lcom/miui/securitycenter/Application;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    return-void
.end method
