.class public final synthetic Lcom/miui/dock/sidebar/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/dock/sidebar/f;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/dock/sidebar/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/dock/sidebar/d;->a:Lcom/miui/dock/sidebar/f;

    iput-boolean p2, p0, Lcom/miui/dock/sidebar/d;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/dock/sidebar/d;->a:Lcom/miui/dock/sidebar/f;

    iget-boolean v1, p0, Lcom/miui/dock/sidebar/d;->b:Z

    invoke-static {v0, v1}, Lcom/miui/dock/sidebar/f;->b(Lcom/miui/dock/sidebar/f;Z)V

    return-void
.end method
