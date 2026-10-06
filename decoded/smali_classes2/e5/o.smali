.class public final synthetic Le5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/dock/drag/a;

.field public final synthetic b:Lg5/n;

.field public final synthetic c:Lq6/i;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/dock/drag/a;Lg5/n;Lq6/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/o;->a:Lcom/miui/dock/drag/a;

    iput-object p2, p0, Le5/o;->b:Lg5/n;

    iput-object p3, p0, Le5/o;->c:Lq6/i;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Le5/o;->a:Lcom/miui/dock/drag/a;

    iget-object v1, p0, Le5/o;->b:Lg5/n;

    iget-object v2, p0, Le5/o;->c:Lq6/i;

    invoke-static {v0, v1, v2, p1}, Lcom/miui/dock/drag/a;->f(Lcom/miui/dock/drag/a;Lg5/n;Lq6/i;Landroid/view/View;)V

    return-void
.end method
