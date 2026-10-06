.class Lcom/miui/antivirus/result/c0$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/result/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/antivirus/result/c0$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/result/c0$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/miui/antivirus/result/b;

    const-string v0, "VIEW"

    invoke-static {v0, p1}, Lcom/miui/antivirus/result/c0;->d(Ljava/lang/String;Lcom/miui/antivirus/result/b;)V

    return-void
.end method
