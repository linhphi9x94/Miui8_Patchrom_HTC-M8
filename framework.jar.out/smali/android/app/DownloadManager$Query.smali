.class public Landroid/app/DownloadManager$Query;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Query"
.end annotation


# static fields
.field public static final ORDER_ASCENDING:I = 0x1

.field public static final ORDER_DESCENDING:I = 0x2


# instance fields
.field private mIds:[J

.field private mOnlyIncludeVisibleInDownloadsUi:Z

.field private mOrderByColumn:Ljava/lang/String;

.field private mOrderDirection:I

.field private mStatusFlags:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 783
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    .line 784
    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    .line 785
    const-string/jumbo v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    .line 786
    const/4 v0, 0x2

    iput v0, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    .line 770
    return-void
.end method

.method private joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .param p1, "joiner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 902
    .local p2, "parts":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 903
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 904
    .local v1, "first":Z
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "part$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 905
    .local v2, "part":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 906
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    const/4 v1, 0x0

    goto :goto_0

    .line 911
    .end local v2    # "part":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private statusClause(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$Query;
    .locals 3
    .param p1, "column"    # Ljava/lang/String;
    .param p2, "direction"    # I

    .prologue
    .line 832
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 833
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 836
    :cond_0
    const-string/jumbo v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    const-string/jumbo v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    .line 843
    :goto_0
    iput p2, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    .line 844
    return-object p0

    .line 838
    :cond_1
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 839
    const-string/jumbo v0, "total_bytes"

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    goto :goto_0

    .line 841
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "baseUri"    # Landroid/net/Uri;

    .prologue
    .line 853
    move-object v1, p3

    .line 854
    .local v1, "uri":Landroid/net/Uri;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .local v8, "selectionParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 857
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    invoke-static {v0}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 859
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    invoke-static {v0}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    .line 862
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 863
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 864
    .local v7, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 865
    const-string/jumbo v0, "="

    const/16 v2, 0xbe

    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 867
    :cond_1
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 868
    const-string/jumbo v0, "="

    const/16 v2, 0xc0

    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 870
    :cond_2
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 871
    const-string/jumbo v0, "="

    const/16 v2, 0xc1

    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 872
    const-string/jumbo v0, "="

    const/16 v2, 0xc2

    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    const-string/jumbo v0, "="

    const/16 v2, 0xc3

    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    const-string/jumbo v0, "="

    const/16 v2, 0xc4

    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 875
    const-string/jumbo v0, "="

    const/16 v2, 0xc5

    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_3
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 878
    const-string/jumbo v0, "="

    const/16 v2, 0xc8

    invoke-direct {p0, v0, v2}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 880
    :cond_4
    iget-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ">="

    const/16 v9, 0x190

    invoke-direct {p0, v2, v9}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 882
    const-string/jumbo v2, " AND "

    .line 881
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 882
    const-string/jumbo v2, "<"

    const/16 v9, 0x258

    invoke-direct {p0, v2, v9}, Landroid/app/DownloadManager$Query;->statusClause(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 881
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 882
    const-string/jumbo v2, ")"

    .line 881
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_5
    const-string/jumbo v0, " OR "

    invoke-direct {p0, v0, v7}, Landroid/app/DownloadManager$Query;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 887
    .end local v7    # "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    iget-boolean v0, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    if-eqz v0, :cond_7

    .line 888
    const-string/jumbo v0, "is_visible_in_downloads_ui != \'0\'"

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 892
    :cond_7
    const-string/jumbo v0, "deleted != \'1\'"

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 894
    const-string/jumbo v0, " AND "

    invoke-direct {p0, v0, v8}, Landroid/app/DownloadManager$Query;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 895
    .local v3, "selection":Ljava/lang/String;
    iget v0, p0, Landroid/app/DownloadManager$Query;->mOrderDirection:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8

    const-string/jumbo v6, "ASC"

    .line 896
    .local v6, "orderDirection":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/app/DownloadManager$Query;->mOrderByColumn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "orderBy":Ljava/lang/String;
    move-object v0, p1

    move-object v2, p2

    .line 898
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 895
    .end local v5    # "orderBy":Ljava/lang/String;
    .end local v6    # "orderDirection":Ljava/lang/String;
    :cond_8
    const-string/jumbo v6, "DESC"

    .restart local v6    # "orderDirection":Ljava/lang/String;
    goto :goto_0
.end method

.method public varargs setFilterById([J)Landroid/app/DownloadManager$Query;
    .locals 0
    .param p1, "ids"    # [J

    .prologue
    .line 794
    iput-object p1, p0, Landroid/app/DownloadManager$Query;->mIds:[J

    .line 795
    return-object p0
.end method

.method public setFilterByStatus(I)Landroid/app/DownloadManager$Query;
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 804
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$Query;->mStatusFlags:Ljava/lang/Integer;

    .line 805
    return-object p0
.end method

.method public setOnlyIncludeVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Query;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 817
    iput-boolean p1, p0, Landroid/app/DownloadManager$Query;->mOnlyIncludeVisibleInDownloadsUi:Z

    .line 818
    return-object p0
.end method
