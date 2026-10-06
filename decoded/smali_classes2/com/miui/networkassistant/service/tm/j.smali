.class public final synthetic Lcom/miui/networkassistant/service/tm/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/utils/TelephonyUtil$PhoneNumberLoadedListener;


# instance fields
.field public final synthetic a:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficSimManager;IIZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/j;->a:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iput p2, p0, Lcom/miui/networkassistant/service/tm/j;->b:I

    iput p3, p0, Lcom/miui/networkassistant/service/tm/j;->c:I

    iput-boolean p4, p0, Lcom/miui/networkassistant/service/tm/j;->d:Z

    iput-boolean p5, p0, Lcom/miui/networkassistant/service/tm/j;->e:Z

    iput p6, p0, Lcom/miui/networkassistant/service/tm/j;->f:I

    return-void
.end method


# virtual methods
.method public final onPhoneNumberLoaded(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/j;->a:Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    iget v1, p0, Lcom/miui/networkassistant/service/tm/j;->b:I

    iget v2, p0, Lcom/miui/networkassistant/service/tm/j;->c:I

    iget-boolean v3, p0, Lcom/miui/networkassistant/service/tm/j;->d:Z

    iget-boolean v4, p0, Lcom/miui/networkassistant/service/tm/j;->e:Z

    iget v5, p0, Lcom/miui/networkassistant/service/tm/j;->f:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->b(Lcom/miui/networkassistant/service/tm/TrafficSimManager;IIZZILjava/lang/String;)V

    return-void
.end method
