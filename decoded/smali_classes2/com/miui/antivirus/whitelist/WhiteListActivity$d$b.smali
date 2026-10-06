.class Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/whitelist/WhiteListActivity$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/CheckBox;

.field private final d:Landroid/widget/ImageView;

.field final synthetic e:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;


# direct methods
.method private constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->e:Lcom/miui/antivirus/whitelist/WhiteListActivity$d;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b0506

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->d:Landroid/widget/ImageView;

    const p1, 0x7f0b0bc9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->a:Landroid/widget/TextView;

    const p1, 0x7f0b0b21

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->b:Landroid/widget/TextView;

    const p1, 0x7f0b022c

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->c:Landroid/widget/CheckBox;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;Landroid/view/View;Lcom/miui/antivirus/whitelist/WhiteListActivity$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;-><init>(Lcom/miui/antivirus/whitelist/WhiteListActivity$d;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->d:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->c:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic d(Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/miui/antivirus/whitelist/WhiteListActivity$d$b;->b:Landroid/widget/TextView;

    return-object p0
.end method
