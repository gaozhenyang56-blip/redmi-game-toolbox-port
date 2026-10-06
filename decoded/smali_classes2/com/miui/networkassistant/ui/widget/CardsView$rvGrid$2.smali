.class final Lcom/miui/networkassistant/ui/widget/CardsView$rvGrid$2;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/widget/CardsView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lcom/miui/networkassistant/ui/widget/RecyclerViewCompat;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/widget/CardsView;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/widget/CardsView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/widget/CardsView$rvGrid$2;->this$0:Lcom/miui/networkassistant/ui/widget/CardsView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/miui/networkassistant/ui/widget/RecyclerViewCompat;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/widget/CardsView$rvGrid$2;->this$0:Lcom/miui/networkassistant/ui/widget/CardsView;

    const v1, 0x7f0b09d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/widget/RecyclerViewCompat;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/widget/CardsView$rvGrid$2;->invoke()Lcom/miui/networkassistant/ui/widget/RecyclerViewCompat;

    move-result-object v0

    return-object v0
.end method
