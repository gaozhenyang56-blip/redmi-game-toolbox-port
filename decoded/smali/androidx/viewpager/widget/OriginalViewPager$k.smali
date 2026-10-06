.class Landroidx/viewpager/widget/OriginalViewPager$k;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/OriginalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager/widget/OriginalViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/OriginalViewPager;)V
    .locals 0

    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$k;->a:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager$k;->a:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->h()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    iget-object v0, p0, Landroidx/viewpager/widget/OriginalViewPager$k;->a:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/OriginalViewPager;->h()V

    return-void
.end method
