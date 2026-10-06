.class public final synthetic Lyc/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lyc/j;

.field public final synthetic b:Lyc/r;


# direct methods
.method public synthetic constructor <init>(Lyc/j;Lyc/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/i;->a:Lyc/j;

    iput-object p2, p0, Lyc/i;->b:Lyc/r;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lyc/i;->a:Lyc/j;

    iget-object v1, p0, Lyc/i;->b:Lyc/r;

    invoke-static {v0, v1, p1}, Lyc/j;->l(Lyc/j;Lyc/r;Landroid/view/View;)V

    return-void
.end method
