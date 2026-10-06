.class public final synthetic Lpa/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/HashMap;

.field public final synthetic c:I

.field public final synthetic d:Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;

.field public final synthetic e:Ljava/lang/Class;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/HashMap;ILcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpa/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lpa/b;->b:Ljava/util/HashMap;

    iput p3, p0, Lpa/b;->c:I

    iput-object p4, p0, Lpa/b;->d:Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;

    iput-object p5, p0, Lpa/b;->e:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lpa/b;->a:Ljava/lang/String;

    iget-object v1, p0, Lpa/b;->b:Ljava/util/HashMap;

    iget v2, p0, Lpa/b;->c:I

    iget-object v3, p0, Lpa/b;->d:Lcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;

    iget-object v4, p0, Lpa/b;->e:Ljava/lang/Class;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/ui/network/BaseNetRequest;->b(Ljava/lang/String;Ljava/util/HashMap;ILcom/miui/networkassistant/ui/network/BaseNetRequest$Callback;Ljava/lang/Class;)V

    return-void
.end method
