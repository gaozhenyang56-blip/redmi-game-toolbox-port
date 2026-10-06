.class public final synthetic Lcom/miui/gamebooster/windowmanager/newbox/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lak/a;


# instance fields
.field public final synthetic a:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

.field public final synthetic b:Lcom/miui/gamebooster/aihelper/i;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Lcom/miui/gamebooster/aihelper/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/t;->a:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    iput-object p2, p0, Lcom/miui/gamebooster/windowmanager/newbox/t;->b:Lcom/miui/gamebooster/aihelper/i;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/t;->a:Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/t;->b:Lcom/miui/gamebooster/aihelper/i;

    invoke-static {v0, v1}, Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;->m(Lcom/miui/gamebooster/windowmanager/newbox/GameToolboxMainView;Lcom/miui/gamebooster/aihelper/i;)Loj/t;

    move-result-object v0

    return-object v0
.end method
