.class public final synthetic Ly7/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/ui/c;

.field public final synthetic b:Lq6/i;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/ui/c;Lq6/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly7/i;->a:Lcom/miui/gamebooster/ui/c;

    iput-object p2, p0, Ly7/i;->b:Lq6/i;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Ly7/i;->a:Lcom/miui/gamebooster/ui/c;

    iget-object v1, p0, Ly7/i;->b:Lq6/i;

    invoke-static {v0, v1, p1}, Lcom/miui/gamebooster/ui/c;->l(Lcom/miui/gamebooster/ui/c;Lq6/i;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
