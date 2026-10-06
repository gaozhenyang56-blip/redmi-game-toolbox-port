.class Lcom/miui/privacyapps/ui/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/privacyapps/ui/a;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/privacyapps/ui/a$f;

.field final synthetic b:Lpe/c;

.field final synthetic c:Lcom/miui/privacyapps/ui/a;


# direct methods
.method constructor <init>(Lcom/miui/privacyapps/ui/a;Lcom/miui/privacyapps/ui/a$f;Lpe/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/ui/a$b;->c:Lcom/miui/privacyapps/ui/a;

    iput-object p2, p0, Lcom/miui/privacyapps/ui/a$b;->a:Lcom/miui/privacyapps/ui/a$f;

    iput-object p3, p0, Lcom/miui/privacyapps/ui/a$b;->b:Lpe/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/miui/privacyapps/ui/a$b;->c:Lcom/miui/privacyapps/ui/a;

    invoke-static {p1}, Lcom/miui/privacyapps/ui/a;->k(Lcom/miui/privacyapps/ui/a;)Lcom/miui/privacyapps/ui/a$e;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/privacyapps/ui/a$b;->c:Lcom/miui/privacyapps/ui/a;

    invoke-static {p1}, Lcom/miui/privacyapps/ui/a;->k(Lcom/miui/privacyapps/ui/a;)Lcom/miui/privacyapps/ui/a$e;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/privacyapps/ui/a$b;->a:Lcom/miui/privacyapps/ui/a$f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getBindingAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/miui/privacyapps/ui/a$b;->b:Lpe/c;

    invoke-interface {p1, v0, v1}, Lcom/miui/privacyapps/ui/a$e;->a(ILpe/c;)V

    :cond_0
    return-void
.end method
