.class public final synthetic Lpa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;

.field public final synthetic c:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lpa/a;->b:Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;

    iput-object p3, p0, Lpa/a;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lpa/a;->a:Ljava/lang/String;

    iget-object v1, p0, Lpa/a;->b:Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;

    iget-object v2, p0, Lpa/a;->c:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->a(Ljava/lang/String;Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Class;)V

    return-void
.end method
