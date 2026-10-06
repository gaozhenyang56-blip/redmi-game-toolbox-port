.class final enum Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/sdk/tc/DataUsage$PackageDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PkgType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum AddPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum BillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum CallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum DailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum LeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum NoPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

.field public static final enum OldPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v1, "NoPkg"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->NoPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    new-instance v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v3, "DailyPkg"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->DailyPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    new-instance v3, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v5, "AddPkg"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->AddPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    new-instance v5, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v7, "LeisurePkg"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->LeisurePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    new-instance v7, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v9, "OldPkg"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->OldPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    new-instance v9, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v11, "BillPkg"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->BillPkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    new-instance v11, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const-string v13, "CallTimePkg"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->CallTimePkg:Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->$VALUES:[Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;
    .locals 1

    const-class v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    return-object p0
.end method

.method public static values()[Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;
    .locals 1

    sget-object v0, Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->$VALUES:[Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    invoke-virtual {v0}, [Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/sdk/tc/DataUsage$PackageDetail$PkgType;

    return-object v0
.end method
