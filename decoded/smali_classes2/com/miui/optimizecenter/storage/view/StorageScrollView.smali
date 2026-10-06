.class public Lcom/miui/optimizecenter/storage/view/StorageScrollView;
.super Lmiuix/core/widget/NestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/optimizecenter/storage/view/StorageScrollView$a;
    }
.end annotation


# instance fields
.field private F:Lcom/miui/optimizecenter/storage/view/StorageScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmiuix/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Lmiuix/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/view/StorageScrollView;->F:Lcom/miui/optimizecenter/storage/view/StorageScrollView$a;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/miui/optimizecenter/storage/view/StorageScrollView$a;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method public setOnScrollListener(Lcom/miui/optimizecenter/storage/view/StorageScrollView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/view/StorageScrollView;->F:Lcom/miui/optimizecenter/storage/view/StorageScrollView$a;

    return-void
.end method
