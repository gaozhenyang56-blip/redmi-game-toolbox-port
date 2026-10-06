.class public Lcom/miui/permission/StoragePolicyContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/permission/StoragePolicyContract$Method;,
        Lcom/miui/permission/StoragePolicyContract$StoragePolicyTable;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lbe.security.miui.storagepolicy"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTERNAL_DEFAULT_PATH_PREFIX:Ljava/lang/String; = "/mnt/runtime/default/emulated/"

.field public static final EXTERNAL_DEST_PATH_PREFIX:Ljava/lang/String; = "/storage/emulated/"

.field public static final EXTERNAL_FULL_PATH_PREFIX:Ljava/lang/String; = "/mnt/runtime/full/emulated/"

.field public static final EXTERNAL_READ_PATH_PREFIX:Ljava/lang/String; = "/mnt/runtime/read/emulated/"

.field public static final EXTERNAL_WRITE_PATH_PREFIX:Ljava/lang/String; = "/mnt/runtime/write/emulated/"

.field public static final KEY_ISOLATED_GALLERY_PATH:Ljava/lang/String; = "key_isolated_gallery_path"

.field public static final KEY_ISOLATED_PATH_VERSION:Ljava/lang/String; = "key_isolated_path_version"

.field public static final KEY_ISOLATED_SOCIALITY_PATH:Ljava/lang/String; = "key_isolated_sociality_path"

.field public static final MOUNT_MODE_DEFAULT:Ljava/lang/String; = "default"

.field public static final MOUNT_MODE_FULL:Ljava/lang/String; = "full"

.field public static final MOUNT_MODE_READ:Ljava/lang/String; = "read"

.field public static final MOUNT_MODE_REGEX:Ljava/lang/String; = "(?:default|read|write|full)"

.field public static final MOUNT_MODE_WRITE:Ljava/lang/String; = "write"

.field public static final PATH_STORAGE_POLICY:Ljava/lang/String; = "storagePolicy"

.field public static final SPECIAL_PKG_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPLIT_MULTI_PATH:Ljava/lang/String; = ";"

.field public static final SPLIT_PACKAGE:Ljava/lang/String; = ":"

.field public static final SPLIT_PACKAGE_OP:Ljava/lang/String; = "@"

.field public static final SPLIT_PATHS:Ljava/lang/String; = ">"

.field public static final STORAGE_POLICY_URI:Landroid/net/Uri;

.field public static final TYPE_WHITE:Ljava/lang/String; = "1"

.field public static final mExternalModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final mExternalPointMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "content://com.lbe.security.miui.storagepolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/permission/StoragePolicyContract;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.lbe.security.miui.storagepolicy/storagePolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/permission/StoragePolicyContract;->STORAGE_POLICY_URI:Landroid/net/Uri;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/permission/StoragePolicyContract;->SPECIAL_PKG_GROUP:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/permission/StoragePolicyContract;->mExternalModeMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/miui/permission/StoragePolicyContract;->mExternalPointMap:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "/mnt/runtime/default/emulated/"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "/mnt/runtime/read/emulated/"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "/mnt/runtime/write/emulated/"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "/mnt/runtime/full/emulated/"

    invoke-interface {v0, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v10, 0x8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "default"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "read"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "write"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "full"

    invoke-interface {v1, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
