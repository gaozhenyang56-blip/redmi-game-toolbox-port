.class public final synthetic Lcom/miui/networkassistant/service/tm/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;ZIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/e;->a:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iput-boolean p2, p0, Lcom/miui/networkassistant/service/tm/e;->b:Z

    iput p3, p0, Lcom/miui/networkassistant/service/tm/e;->c:I

    iput p4, p0, Lcom/miui/networkassistant/service/tm/e;->d:I

    iput p5, p0, Lcom/miui/networkassistant/service/tm/e;->e:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/e;->a:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget-boolean v1, p0, Lcom/miui/networkassistant/service/tm/e;->b:Z

    iget v2, p0, Lcom/miui/networkassistant/service/tm/e;->c:I

    iget v3, p0, Lcom/miui/networkassistant/service/tm/e;->d:I

    iget v4, p0, Lcom/miui/networkassistant/service/tm/e;->e:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->h(Lcom/miui/networkassistant/service/tm/TrafficSimManager;ZIII)V

    return-void
.end method
