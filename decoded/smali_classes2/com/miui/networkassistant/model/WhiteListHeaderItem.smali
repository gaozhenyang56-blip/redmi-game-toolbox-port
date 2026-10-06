.class public final Lcom/miui/networkassistant/model/WhiteListHeaderItem;
.super Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;
.source "SourceFile"


# instance fields
.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "title"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/base/recyclerview/BaseEntity;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/model/WhiteListHeaderItem;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/miui/networkassistant/model/WhiteListHeaderItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/networkassistant/model/WhiteListHeaderItem;->title:Ljava/lang/String;

    return-void
.end method
