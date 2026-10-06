.class Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/networkassistant/model/WhiteGroupHeader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$3;->this$0:Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/networkassistant/model/WhiteGroupHeader;Lcom/miui/networkassistant/model/WhiteGroupHeader;)I
    .locals 0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->getGroupHeaderType()Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/networkassistant/model/WhiteGroupHeader;->getGroupHeaderType()Lcom/miui/networkassistant/model/WhiteGroupHeader$WhiteGroupHeaderType;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    check-cast p2, Lcom/miui/networkassistant/model/WhiteGroupHeader;

    invoke-virtual {p0, p1, p2}, Lcom/miui/networkassistant/ui/adapter/WhiteListAdapter$3;->compare(Lcom/miui/networkassistant/model/WhiteGroupHeader;Lcom/miui/networkassistant/model/WhiteGroupHeader;)I

    move-result p1

    return p1
.end method
