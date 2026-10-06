.class public final Lcom/miui/networkassistant/ui/bean/AgreeBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final rtnCode:I

.field private final rtnMsg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "rtnMsg"

    invoke-static {p2, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/networkassistant/ui/bean/AgreeBean;->rtnCode:I

    iput-object p2, p0, Lcom/miui/networkassistant/ui/bean/AgreeBean;->rtnMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getRtnCode()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/ui/bean/AgreeBean;->rtnCode:I

    return v0
.end method

.method public final getRtnMsg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/ui/bean/AgreeBean;->rtnMsg:Ljava/lang/String;

    return-object v0
.end method
