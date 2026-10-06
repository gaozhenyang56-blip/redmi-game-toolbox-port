.class public final Ll2/f;
.super Lcom/miui/antispam/ui/view/RecyclerViewExt$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll2/f$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/antispam/ui/view/RecyclerViewExt$b<",
        "Ll2/f$c;",
        ">;"
    }
.end annotation


# instance fields
.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/antispam/ui/view/RecyclerViewExt$b;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object p1, p0, Ll2/f;->i:Landroid/content/Context;

    return-void
.end method

.method private r(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Ll2/f$a;

    invoke-direct {v0, p0, p1, p2}, Ll2/f$a;-><init>(Ll2/f;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic m(Landroidx/recyclerview/widget/RecyclerView$c0;Landroid/database/Cursor;I)V
    .locals 0

    check-cast p1, Ll2/f$c;

    invoke-virtual {p0, p1, p2, p3}, Ll2/f;->p(Ll2/f$c;Landroid/database/Cursor;I)V

    return-void
.end method

.method protected n()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Ll2/f;->q(Landroid/view/ViewGroup;I)Ll2/f$c;

    move-result-object p1

    return-object p1
.end method

.method public p(Ll2/f$c;Landroid/database/Cursor;I)V
    .locals 3

    invoke-static {p1}, Ll2/f$c;->a(Ll2/f$c;)V

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object p3

    invoke-virtual {p3}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    invoke-static {p1}, Ll2/f$c;->b(Ll2/f$c;)Landroid/widget/ImageView;

    move-result-object p3

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string p3, "simid"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p3

    long-to-int v1, v1

    invoke-virtual {p3, v1}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p1}, Ll2/f$c;->b(Ll2/f$c;)Landroid/widget/ImageView;

    move-result-object p3

    const v1, 0x7f080363

    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne v1, p3, :cond_2

    invoke-static {}, Lm2/g;->c()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1}, Ll2/f$c;->b(Ll2/f$c;)Landroid/widget/ImageView;

    move-result-object p3

    const v1, 0x7f080fa4

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ll2/f$c;->b(Ll2/f$c;)Landroid/widget/ImageView;

    move-result-object p3

    const v1, 0x7f080364

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ll2/f$c;->b(Ll2/f$c;)Landroid/widget/ImageView;

    move-result-object p3

    const v1, 0x7f080fac

    goto :goto_0

    :cond_3
    invoke-static {p1}, Ll2/f$c;->b(Ll2/f$c;)Landroid/widget/ImageView;

    move-result-object p3

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const-string p3, "date"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    invoke-static {p1}, Ll2/f$c;->c(Ll2/f$c;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Ll2/f;->i:Landroid/content/Context;

    invoke-static {v2, p2, p3, v0}, Lm2/f;->n(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2}, Ll2/f;->r(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    new-instance p2, Ll2/f$b;

    invoke-direct {p2, p0}, Ll2/f$b;-><init>(Ll2/f;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public q(Landroid/view/ViewGroup;I)Ll2/f$c;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance p2, Ll2/f$c;

    iget-object v0, p0, Ll2/f;->i:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e018c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Ll2/f$c;-><init>(Landroid/view/View;Ll2/f$a;)V

    return-object p2
.end method
