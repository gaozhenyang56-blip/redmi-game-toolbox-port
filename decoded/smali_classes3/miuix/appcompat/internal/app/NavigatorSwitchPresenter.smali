.class public Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAlpha:F

.field private final mNavigatorSwitch:Landroid/view/View;

.field private mSuppressAlpha:Z

.field private mSuppressVisibility:Z

.field private mVisibility:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mVisibility:I

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p1

    iput p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mAlpha:F

    return-void
.end method


# virtual methods
.method public setAlpha(F)V
    .locals 1

    iput p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mAlpha:F

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressAlpha:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iput p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mVisibility:I

    iget-boolean v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressVisibility:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public suppressAlpha(ZF)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressAlpha:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    iget p2, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mAlpha:F

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public suppressVisibility(ZI)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mSuppressVisibility:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mNavigatorSwitch:Landroid/view/View;

    iget p2, p0, Lmiuix/appcompat/internal/app/NavigatorSwitchPresenter;->mVisibility:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
