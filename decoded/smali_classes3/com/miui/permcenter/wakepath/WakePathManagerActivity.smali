.class public final Lcom/miui/permcenter/wakepath/WakePathManagerActivity;
.super Lcom/miui/common/base/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/permcenter/wakepath/WakePathManagerActivity;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method public static final d0(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/permcenter/wakepath/WakePathManagerActivity;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;

    invoke-virtual {v0, p0}, Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;->d(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraPaddingApplyToContentEnable(Z)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    const-string v0, "supportFragmentManager.beginTransaction()"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x1020002

    sget-object v1, Lcom/miui/permcenter/wakepath/WakePathManagerActivity;->a:Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "intent"

    invoke-static {v2, v3}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;->a(Lcom/miui/permcenter/wakepath/WakePathManagerActivity$a;Landroid/content/Intent;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->v(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/s;->k()I

    :cond_0
    new-instance p1, Landroidx/lifecycle/u0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/u0;-><init>(Landroidx/lifecycle/y0;)V

    const-class v0, Lyc/s;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;)Landroidx/lifecycle/r0;

    move-result-object p1

    check-cast p1, Lyc/s;

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity;->mAppContext:Landroid/content/Context;

    const-string v1, "mAppContext"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lyc/s;->r(Landroid/content/Context;)V

    return-void
.end method
