.class public abstract Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;
.super Lcom/miui/networkassistant/ui/view/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity$Companion;,
        Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity$PaddingLevel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/miui/networkassistant/ui/view/IPresenter;",
        ">",
        "Lcom/miui/networkassistant/ui/view/BaseActivity<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "BH-BaseActivity"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mCustomHorizontalPadding:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mExtraHorizontalPaddingLevel:I

.field private needHorizontalPadding:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity$Companion;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->Companion:Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/BaseActivity;-><init>()V

    invoke-static {}, Lx4/t;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->needHorizontalPadding:Z

    return-void
.end method

.method private final setDefaultExtraHorizontalPaddingLevel()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->setCustomExtraHorizontalPaddingLevel(I)V

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

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->needHorizontalPadding:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->mCustomHorizontalPadding:[I

    if-nez p1, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->mExtraHorizontalPaddingLevel:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->setDefaultExtraHorizontalPaddingLevel()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->setCustomHorizontalPadding([I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    iget-boolean p1, p0, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->needHorizontalPadding:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->mCustomHorizontalPadding:[I

    if-nez p1, :cond_0

    iget p1, p0, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->mExtraHorizontalPaddingLevel:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->setDefaultExtraHorizontalPaddingLevel()V

    :cond_0
    return-void
.end method

.method public setCustomExtraHorizontalPaddingLevel(I)V
    .locals 1

    iput p1, p0, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->mExtraHorizontalPaddingLevel:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingLevel(I)V

    return-void
.end method

.method public setCustomHorizontalPadding([I)V
    .locals 6
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    if-eqz p1, :cond_4

    array-length v0, p1

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    xor-int/2addr v0, v3

    if-eqz v0, :cond_4

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->mCustomHorizontalPadding:[I

    array-length v0, p1

    const v4, 0x1020002

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    const/4 v5, 0x4

    if-eq v0, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aget v1, p1, v1

    aget v3, p1, v3

    aget v2, p1, v2

    const/4 v4, 0x3

    aget p1, p1, v4

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aget v2, p1, v1

    aget p1, p1, v3

    invoke-virtual {v0, v2, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    aget p1, p1, v1

    invoke-virtual {v0, p1, v1, p1, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->setDefaultExtraHorizontalPaddingLevel()V

    :cond_5
    :goto_1
    return-void
.end method

.method public setNeedHorizontalPadding(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/networkassistant/ui/view/AbstractPaddingActivity;->needHorizontalPadding:Z

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setExtraHorizontalPaddingEnable(Z)V

    return-void
.end method
