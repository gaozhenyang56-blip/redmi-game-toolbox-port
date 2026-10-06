.class public final synthetic Ls8/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls8/u;

.field public final synthetic b:Lcom/miui/dock/sidebar/j;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ls8/u;Lcom/miui/dock/sidebar/j;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/n;->a:Ls8/u;

    iput-object p2, p0, Ls8/n;->b:Lcom/miui/dock/sidebar/j;

    iput-object p3, p0, Ls8/n;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ls8/n;->a:Ls8/u;

    iget-object v1, p0, Ls8/n;->b:Lcom/miui/dock/sidebar/j;

    iget-object v2, p0, Ls8/n;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Ls8/u;->d(Ls8/u;Lcom/miui/dock/sidebar/j;Ljava/lang/String;)V

    return-void
.end method
