.class public Lcom/miui/networkassistant/ui/view/BaseActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/view/BaseActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/networkassistant/ui/view/IPresenter;",
        ">",
        "Lmiuix/appcompat/app/AppCompatActivity;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/networkassistant/ui/view/BaseActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "BH-BaseActivity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static aliveBusinessActivitySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static foreGroundBusinessActivitySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static isMixTabStyleForeGround:Z


# instance fields
.field private mPresenter:Lcom/miui/networkassistant/ui/view/IPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/view/BaseActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/view/BaseActivity$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/networkassistant/ui/view/BaseActivity;->Companion:Lcom/miui/networkassistant/ui/view/BaseActivity$Companion;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/view/BaseActivity;->aliveBusinessActivitySet:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/ui/view/BaseActivity;->foreGroundBusinessActivitySet:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAliveBusinessActivitySet$cp()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/view/BaseActivity;->aliveBusinessActivitySet:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic access$getForeGroundBusinessActivitySet$cp()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/view/BaseActivity;->foreGroundBusinessActivitySet:Ljava/util/HashSet;

    return-object v0
.end method

.method public static final synthetic access$isMixTabStyleForeGround$cp()Z
    .locals 1

    sget-boolean v0, Lcom/miui/networkassistant/ui/view/BaseActivity;->isMixTabStyleForeGround:Z

    return v0
.end method

.method public static final synthetic access$setAliveBusinessActivitySet$cp(Ljava/util/HashSet;)V
    .locals 0

    sput-object p0, Lcom/miui/networkassistant/ui/view/BaseActivity;->aliveBusinessActivitySet:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic access$setForeGroundBusinessActivitySet$cp(Ljava/util/HashSet;)V
    .locals 0

    sput-object p0, Lcom/miui/networkassistant/ui/view/BaseActivity;->foreGroundBusinessActivitySet:Ljava/util/HashSet;

    return-void
.end method

.method public static final synthetic access$setMixTabStyleForeGround$cp(Z)V
    .locals 0

    sput-boolean p0, Lcom/miui/networkassistant/ui/view/BaseActivity;->isMixTabStyleForeGround:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getDefaultViewModelCreationExtras()Lp0/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/j;->a(Landroidx/lifecycle/k;)Lp0/a;

    move-result-object v0

    return-object v0
.end method

.method public final getMPresenter()Lcom/miui/networkassistant/ui/view/IPresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BaseActivity;->mPresenter:Lcom/miui/networkassistant/ui/view/IPresenter;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object p1, Lcom/miui/networkassistant/ui/view/BaseActivity;->aliveBusinessActivitySet:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/BaseActivity;->mPresenter:Lcom/miui/networkassistant/ui/view/IPresenter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/networkassistant/ui/view/IPresenter;->onDestroy()V

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/ui/view/BaseActivity;->aliveBusinessActivitySet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/view/BaseActivity;->foreGroundBusinessActivitySet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/ui/view/BaseActivity;->foreGroundBusinessActivitySet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method

.method public final setMPresenter(Lcom/miui/networkassistant/ui/view/IPresenter;)V
    .locals 0
    .param p1    # Lcom/miui/networkassistant/ui/view/IPresenter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/BaseActivity;->mPresenter:Lcom/miui/networkassistant/ui/view/IPresenter;

    return-void
.end method
