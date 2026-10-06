.class public Lcom/miui/securityscan/fileobserver/a$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/fileobserver/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/miui/securityscan/fileobserver/a;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/fileobserver/a;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/miui/securityscan/fileobserver/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/a$a;->b:Lcom/miui/securityscan/fileobserver/a;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const p1, 0x7f0b05bd

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/securityscan/fileobserver/a$a;->a:Landroid/widget/ImageView;

    new-instance p1, Lvf/c;

    invoke-direct {p1, p0, p2}, Lvf/c;-><init>(Lcom/miui/securityscan/fileobserver/a$a;Landroid/view/View;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/miui/securityscan/fileobserver/a$a;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/fileobserver/a$a;->b(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/miui/securityscan/fileobserver/a$a;->b:Lcom/miui/securityscan/fileobserver/a;

    invoke-static {p2}, Lcom/miui/securityscan/fileobserver/a;->k(Lcom/miui/securityscan/fileobserver/a;)Lcom/miui/securityscan/fileobserver/a$b;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/securityscan/fileobserver/a$a;->b:Lcom/miui/securityscan/fileobserver/a;

    invoke-static {p2}, Lcom/miui/securityscan/fileobserver/a;->k(Lcom/miui/securityscan/fileobserver/a;)Lcom/miui/securityscan/fileobserver/a$b;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/miui/securityscan/fileobserver/a$b;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
