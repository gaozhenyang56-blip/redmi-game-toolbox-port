.class public Lcom/miui/networkassistant/config/SimStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private displayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SimStatus;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/config/SimStatus;->displayName:Ljava/lang/String;

    return-void
.end method
