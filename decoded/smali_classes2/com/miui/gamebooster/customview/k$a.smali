.class public final Lcom/miui/gamebooster/customview/k$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/k;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic e:Lcom/miui/gamebooster/customview/k;

.field final synthetic f:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/k;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/k$a;->e:Lcom/miui/gamebooster/customview/k;

    iput-object p2, p0, Lcom/miui/gamebooster/customview/k$a;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/k$a;->e:Lcom/miui/gamebooster/customview/k;

    invoke-static {v0}, Lcom/miui/gamebooster/customview/k;->a(Lcom/miui/gamebooster/customview/k;)Lt5/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lt5/k;->getItemViewType(I)I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object p1, p0, Lcom/miui/gamebooster/customview/k$a;->f:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result p1

    return p1
.end method
