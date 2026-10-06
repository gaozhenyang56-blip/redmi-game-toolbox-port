.class public final synthetic Ls8/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/dock/drag/a$a;


# instance fields
.field public final synthetic a:Ls8/h;

.field public final synthetic b:Lcom/miui/dock/sidebar/j;


# direct methods
.method public synthetic constructor <init>(Ls8/h;Lcom/miui/dock/sidebar/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/f;->a:Ls8/h;

    iput-object p2, p0, Ls8/f;->b:Lcom/miui/dock/sidebar/j;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Ls8/f;->a:Ls8/h;

    iget-object v1, p0, Ls8/f;->b:Lcom/miui/dock/sidebar/j;

    invoke-static {v0, v1, p1}, Ls8/h;->g(Ls8/h;Lcom/miui/dock/sidebar/j;Landroid/view/View;)V

    return-void
.end method
