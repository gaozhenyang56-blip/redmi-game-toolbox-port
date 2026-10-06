.class public final synthetic Lf5/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/dock/edit/c;

.field public final synthetic b:I

.field public final synthetic c:Lg5/j;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/dock/edit/c;ILg5/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5/w;->a:Lcom/miui/dock/edit/c;

    iput p2, p0, Lf5/w;->b:I

    iput-object p3, p0, Lf5/w;->c:Lg5/j;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lf5/w;->a:Lcom/miui/dock/edit/c;

    iget v1, p0, Lf5/w;->b:I

    iget-object v2, p0, Lf5/w;->c:Lg5/j;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/dock/edit/c;->k(Lcom/miui/dock/edit/c;ILg5/j;Landroid/view/View;)V

    return-void
.end method
