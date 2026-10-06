.class public final Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType$ViewHolder;
.super Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private final title:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b04e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "itemView.findViewById(R.id.header_title)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType$ViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final getTitle()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/impl/HeaderItemViewType$ViewHolder;->title:Landroid/widget/TextView;

    return-object v0
.end method
