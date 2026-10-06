.class public final synthetic Lcom/miui/networkassistant/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/m;->a:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/m;->a:Lcom/miui/networkassistant/ui/NetworkAssistantActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity;->k0(Lcom/miui/networkassistant/ui/NetworkAssistantActivity;)V

    return-void
.end method
