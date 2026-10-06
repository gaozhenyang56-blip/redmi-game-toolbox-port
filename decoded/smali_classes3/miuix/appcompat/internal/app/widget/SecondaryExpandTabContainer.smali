.class public Lmiuix/appcompat/internal/app/widget/SecondaryExpandTabContainer;
.super Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lmiuix/appcompat/internal/app/widget/SecondaryExpandTabContainer;->getTabContainerHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/internal/app/widget/SecondaryTabContainerView;->setContentHeight(I)V

    return-void
.end method


# virtual methods
.method protected getDefaultTabTextStyle()I
    .locals 1

    sget v0, Lmiuix/appcompat/R$attr;->actionBarTabTextSecondaryExpandStyle:I

    return v0
.end method

.method protected getTabActivatedTextStyle()I
    .locals 1

    sget v0, Lmiuix/appcompat/R$attr;->actionBarTabActivatedTextSecondaryExpandStyle:I

    return v0
.end method

.method getTabContainerHeight()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method
