.class public final synthetic Lcom/miui/networkassistant/traffic/correction/impl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/c;->a:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/c;->a:Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->a(Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate;)Lcom/miui/networkassistant/traffic/correction/impl/InterceptionReceiverDelegate$ResultEntry;

    move-result-object v0

    return-object v0
.end method
