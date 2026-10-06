.class public final Lcom/miui/networkassistant/ui/bean/PolicyCode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final data:Lcom/miui/networkassistant/ui/bean/PolicyData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rtnCode:I

.field private final rtnMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/bean/PolicyData;ILjava/lang/String;)V
    .locals 1
    .param p1    # Lcom/miui/networkassistant/ui/bean/PolicyData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "data"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtnMsg"

    invoke-static {p3, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/bean/PolicyCode;->data:Lcom/miui/networkassistant/ui/bean/PolicyData;

    iput p2, p0, Lcom/miui/networkassistant/ui/bean/PolicyCode;->rtnCode:I

    iput-object p3, p0, Lcom/miui/networkassistant/ui/bean/PolicyCode;->rtnMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getData()Lcom/miui/networkassistant/ui/bean/PolicyData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/PolicyCode;->data:Lcom/miui/networkassistant/ui/bean/PolicyData;

    return-object v0
.end method

.method public final getRtnCode()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/PolicyCode;->rtnCode:I

    return v0
.end method

.method public final getRtnMsg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/PolicyCode;->rtnMsg:Ljava/lang/String;

    return-object v0
.end method
