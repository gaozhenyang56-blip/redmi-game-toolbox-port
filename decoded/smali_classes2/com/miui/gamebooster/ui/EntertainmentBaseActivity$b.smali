.class Lcom/miui/gamebooster/ui/EntertainmentBaseActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;


# direct methods
.method private constructor <init>(Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity$b;->a:Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;Lcom/miui/gamebooster/ui/EntertainmentBaseActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity$b;-><init>(Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;)V

    return-void
.end method

.method private static synthetic o8()V
    .locals 3

    invoke-static {}, Ld2/c;->b()Ld2/c;

    move-result-object v0

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v1

    const v2, 0x7f120a80

    invoke-virtual {v0, v1, v2}, Ld2/c;->e(Landroid/content/Context;I)Ld2/c;

    return-void
.end method

.method public static synthetic v1()V
    .locals 0

    invoke-static {}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity$b;->o8()V

    return-void
.end method


# virtual methods
.method public onDisplayFoldChanged(IZ)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity$b;->a:Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;

    invoke-static {p1, p2}, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;->d0(Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;Z)Z

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity$b;->a:Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;

    new-instance p2, Lcom/miui/gamebooster/ui/a;

    invoke-direct {p2}, Lcom/miui/gamebooster/ui/a;-><init>()V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/EntertainmentBaseActivity$b;->a:Lcom/miui/gamebooster/ui/EntertainmentBaseActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method
