.class final Lcom/miui/gamebooster/aihelper/i$f;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/aihelper/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Landroidx/recyclerview/widget/RecyclerView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/aihelper/i;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/aihelper/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/aihelper/i$f;->a:Lcom/miui/gamebooster/aihelper/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/recyclerview/widget/RecyclerView;
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/aihelper/i$f;->a:Lcom/miui/gamebooster/aihelper/i;

    const v1, 0x7f0b0968

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gamebooster/aihelper/i$f;->invoke()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method
