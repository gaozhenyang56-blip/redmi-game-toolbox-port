.class Lcom/miui/antivirus/activity/MainActivity$f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f0"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$f0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/activity/MainActivity;Lcom/miui/antivirus/activity/MainActivity$k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antivirus/activity/MainActivity$f0;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/antivirus/activity/MainActivity$f0;->d(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/antivirus/activity/MainActivity$f0;->c(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method

.method private static synthetic c(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/antivirus/activity/MainActivity;->d1(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method

.method private static synthetic d(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/antivirus/activity/MainActivity;->c1(Lcom/miui/antivirus/activity/MainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$f0;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {v1, v2}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->Y0(Lcom/miui/antivirus/activity/MainActivity;Z)Z

    invoke-static {}, Lw2/t;->I()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/antivirus/activity/MainActivity;->b1(Lcom/miui/antivirus/activity/MainActivity;Z)Z

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->a1(Lcom/miui/antivirus/activity/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    invoke-static {v1}, Lo2/b;->g(Landroid/content/Context;)Lo2/b;

    move-result-object v1

    invoke-virtual {v1}, Lo2/b;->i()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {}, Lef/x;->z()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Lcom/miui/antivirus/activity/a;

    invoke-direct {v1, v0}, Lcom/miui/antivirus/activity/a;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/miui/antivirus/activity/b;

    invoke-direct {v1, v0}, Lcom/miui/antivirus/activity/b;-><init>(Lcom/miui/antivirus/activity/MainActivity;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
