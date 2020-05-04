package com.oppo.providers.downloads;

import com.android.providers.downloads.DownloadInfoData;
import java.util.List;

public interface DownloadStatesCallback {
    void onDownloadDeleted(List<DownloadInfoData> list);

    void onDownloadInserted(List<DownloadInfoData> list);

    void onDownloadUpdated(List<DownloadInfoData> list);
}
