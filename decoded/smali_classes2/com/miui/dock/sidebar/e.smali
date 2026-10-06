.class public final synthetic Lcom/miui/dock/sidebar/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/dock/sidebar/f;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/dock/sidebar/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/dock/sidebar/e;->a:Lcom/miui/dock/sidebar/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/dock/sidebar/e;->a:Lcom/miui/dock/sidebar/f;

    invoke-static {v0}, Lcom/miui/dock/sidebar/f;->a(Lcom/miui/dock/sidebar/f;)V

    return-void
.end method
