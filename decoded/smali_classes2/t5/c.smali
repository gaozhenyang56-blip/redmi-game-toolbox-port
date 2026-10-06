.class public abstract Lt5/c;
.super Landroidx/viewpager/widget/a;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Landroidx/fragment/app/s;

.field private mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

.field private final mFragmentManager:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    invoke-direct {p0}, Landroidx/viewpager/widget/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lt5/c;->mCurTransaction:Landroidx/fragment/app/s;

    iput-object v0, p0, Lt5/c;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    iput-object p1, p0, Lt5/c;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private static makeFragmentName(IJ)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lt5/c;->mCurTransaction:Landroidx/fragment/app/s;

    if-nez p1, :cond_0

    iget-object p1, p0, Lt5/c;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object p1

    iput-object p1, p0, Lt5/c;->mCurTransaction:Landroidx/fragment/app/s;

    :cond_0
    iget-object p1, p0, Lt5/c;->mCurTransaction:Landroidx/fragment/app/s;

    check-cast p3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/s;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    iget-object p1, p0, Lt5/c;->mCurTransaction:Landroidx/fragment/app/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/s;->l()I

    const/4 p1, 0x0

    iput-object p1, p0, Lt5/c;->mCurTransaction:Landroidx/fragment/app/s;

    iget-object p1, p0, Lt5/c;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->d0()Z

    :cond_0
    return-void
.end method

.method public abstract getItem(I)Landroidx/fragment/app/Fragment;
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lt5/c;->mCurTransaction:Landroidx/fragment/app/s;

    if-nez v0, :cond_0

    iget-object v0, p0, Lt5/c;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/s;

    move-result-object v0

    iput-object v0, p0, Lt5/c;->mCurTransaction:Landroidx/fragment/app/s;

    :cond_0
    invoke-virtual {p0, p2}, Lt5/c;->getItemId(I)J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Lt5/c;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lt5/c;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->h0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lt5/c;->mCurTransaction:Landroidx/fragment/app/s;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/s;->j(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/s;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lt5/c;->getItem(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    iget-object p2, p0, Lt5/c;->mCurTransaction:Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Lt5/c;->makeFragmentName(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, v2, p1}, Landroidx/fragment/app/s;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/s;

    :goto_0
    iget-object p1, p0, Lt5/c;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq v2, p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    return-object v2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroidx/fragment/app/Fragment;

    iget-object p1, p0, Lt5/c;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_2

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    iget-object p1, p0, Lt5/c;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_1
    iput-object p3, p0, Lt5/c;->mCurrentPrimaryItem:Landroidx/fragment/app/Fragment;

    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
