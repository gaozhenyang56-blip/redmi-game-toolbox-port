.class public final enum Lcom/miui/networkassistant/model/FirewallRule;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/networkassistant/model/FirewallRule;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/networkassistant/model/FirewallRule;

.field public static final enum Alert:Lcom/miui/networkassistant/model/FirewallRule;

.field public static final enum Allow:Lcom/miui/networkassistant/model/FirewallRule;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/miui/networkassistant/model/FirewallRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Init:Lcom/miui/networkassistant/model/FirewallRule;

.field public static final enum Restrict:Lcom/miui/networkassistant/model/FirewallRule;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/miui/networkassistant/model/FirewallRule;

    const-string v1, "Init"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/networkassistant/model/FirewallRule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Init:Lcom/miui/networkassistant/model/FirewallRule;

    new-instance v1, Lcom/miui/networkassistant/model/FirewallRule;

    const-string v3, "Allow"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/miui/networkassistant/model/FirewallRule;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    new-instance v3, Lcom/miui/networkassistant/model/FirewallRule;

    const-string v5, "Restrict"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/miui/networkassistant/model/FirewallRule;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    new-instance v5, Lcom/miui/networkassistant/model/FirewallRule;

    const-string v7, "Alert"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/miui/networkassistant/model/FirewallRule;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/miui/networkassistant/model/FirewallRule;->Alert:Lcom/miui/networkassistant/model/FirewallRule;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/miui/networkassistant/model/FirewallRule;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/miui/networkassistant/model/FirewallRule;->$VALUES:[Lcom/miui/networkassistant/model/FirewallRule;

    new-instance v0, Lcom/miui/networkassistant/model/FirewallRule$1;

    invoke-direct {v0}, Lcom/miui/networkassistant/model/FirewallRule$1;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/model/FirewallRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/networkassistant/model/FirewallRule;->value:I

    return-void
.end method

.method public static parse(I)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    return-object p0

    :cond_0
    sget-object p0, Lcom/miui/networkassistant/model/FirewallRule;->Alert:Lcom/miui/networkassistant/model/FirewallRule;

    return-object p0

    :cond_1
    sget-object p0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    return-object p0

    :cond_2
    sget-object p0, Lcom/miui/networkassistant/model/FirewallRule;->Allow:Lcom/miui/networkassistant/model/FirewallRule;

    return-object p0

    :cond_3
    sget-object p0, Lcom/miui/networkassistant/model/FirewallRule;->Init:Lcom/miui/networkassistant/model/FirewallRule;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    const-class v0, Lcom/miui/networkassistant/model/FirewallRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/networkassistant/model/FirewallRule;

    return-object p0
.end method

.method public static values()[Lcom/miui/networkassistant/model/FirewallRule;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->$VALUES:[Lcom/miui/networkassistant/model/FirewallRule;

    invoke-virtual {v0}, [Lcom/miui/networkassistant/model/FirewallRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/FirewallRule;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/model/FirewallRule;->value:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/model/FirewallRule;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/miui/networkassistant/model/FirewallRule;->value:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
