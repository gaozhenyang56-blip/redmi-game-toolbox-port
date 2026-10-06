.class public final synthetic Lcom/miui/networkassistant/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/w;->a:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;

    iput p2, p0, Lcom/miui/networkassistant/ui/w;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/w;->a:Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;

    iget v1, p0, Lcom/miui/networkassistant/ui/w;->b:I

    invoke-static {v0, v1}, Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;->b(Lcom/miui/networkassistant/ui/NetworkAssistantActivity$4;I)V

    return-void
.end method
