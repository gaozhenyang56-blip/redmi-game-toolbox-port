.class Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antispam/ui/activity/KeywordListActivity$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/CheckBox;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0b02d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;->a:Landroid/widget/TextView;

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;->b:Landroid/widget/CheckBox;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/miui/antispam/ui/activity/KeywordListActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/KeywordListActivity$g$c;-><init>(Landroid/view/View;)V

    return-void
.end method
