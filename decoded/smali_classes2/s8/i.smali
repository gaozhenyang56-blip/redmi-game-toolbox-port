.class public final synthetic Ls8/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls8/h$h;

.field public final synthetic b:Lcom/miui/dock/sidebar/j;


# direct methods
.method public synthetic constructor <init>(Ls8/h$h;Lcom/miui/dock/sidebar/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/i;->a:Ls8/h$h;

    iput-object p2, p0, Ls8/i;->b:Lcom/miui/dock/sidebar/j;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ls8/i;->a:Ls8/h$h;

    iget-object v1, p0, Ls8/i;->b:Lcom/miui/dock/sidebar/j;

    invoke-static {v0, v1}, Ls8/h$h;->v1(Ls8/h$h;Lcom/miui/dock/sidebar/j;)V

    return-void
.end method
