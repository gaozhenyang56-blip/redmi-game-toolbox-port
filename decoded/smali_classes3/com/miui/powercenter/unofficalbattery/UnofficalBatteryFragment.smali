.class public Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryFragment;
.super Lmiuix/appcompat/app/Fragment;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field private a:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryFragment;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryFragment;->d0(Landroid/view/View;)V

    return-void
.end method

.method private c0(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0b0d40

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryFragment;->a:Landroid/widget/LinearLayout;

    new-instance v0, Lle/a;

    invoke-direct {v0, p0}, Lle/a;-><init>(Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private synthetic d0(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryFragment;->e0()V

    return-void
.end method

.method private e0()V
    .locals 3

    const-string v0, "https://m.mi.com/maplocation/address?location_type=outlet"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lhd/a;->B1()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f13043e

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->setThemeRes(I)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0e0411

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/unofficalbattery/UnofficalBatteryFragment;->c0(Landroid/view/View;)V

    return-object p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    invoke-static {}, Lhd/a;->C1()V

    return-void
.end method
